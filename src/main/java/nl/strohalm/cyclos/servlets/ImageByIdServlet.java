/*
   This file is part of Cyclos.

   Cyclos is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   Cyclos is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with Cyclos; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

 */
package nl.strohalm.cyclos.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nl.strohalm.cyclos.CyclosConfiguration;
import nl.strohalm.cyclos.annotations.Inject;
import nl.strohalm.cyclos.dao.exceptions.EntityNotFoundException;
import nl.strohalm.cyclos.entities.customization.images.Image;
import nl.strohalm.cyclos.services.customization.ImageService;
import nl.strohalm.cyclos.utils.SpringHelper;
import nl.strohalm.cyclos.utils.ImageHelper.ImageType;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

/**
 * This servlet will show images that are on database
 * @author luis
 */
public class ImageByIdServlet extends HttpServlet {

    /**
     * An image descriptor for images directly from DB
     * @author luis
     */
    private class DBImageDescriptor extends ImageDescriptor {
        private final long id;

        private DBImageDescriptor(final HttpServletRequest request, final HttpServletResponse response, final long id) {
            super(request, response);
            this.id = id;
        }

        @Override
        public void write() throws IOException {
            transactionTemplate.execute(new TransactionCallbackWithoutResult() {
                @Override
                protected void doInTransactionWithoutResult(final TransactionStatus status) {
                    status.setRollbackOnly();
                    try {
                        final Image image = imageService.load(id);
                        if (!setLastModified(image.getLastModified().getTimeInMillis())) {
                            // File has not changed since last request. Return
                            return;
                        }
                        setContentType(image.getContentType());
                        // setContentLength(isThumbnail ? image.getThumbnailSize() : image.getImageSize());
                        final InputStream in = (isThumbnail ? image.getThumbnail() : image.getImage()).getBinaryStream();
                        writeContents(in);
                    } catch (final EntityNotFoundException e) {
                        sendError(HttpServletResponse.SC_NOT_FOUND);
                    } catch (final Exception e) {
                        sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                    }
                }
            });
        }

        public boolean writeIntoFile(final File file) {
            return transactionTemplate.execute(new TransactionCallback<Boolean>() {

                public Boolean doInTransaction(final TransactionStatus status) {
                    status.setRollbackOnly();
                    try {
                        final Image image = imageService.load(id);
                        final InputStream in = (isThumbnail ? image.getThumbnail() : image.getImage()).getBinaryStream();
                        IOUtils.copy(in, new FileOutputStream(file));
                        file.setLastModified(image.getLastModified().getTimeInMillis());
                        return true;
                    } catch (final Exception e) {
                        // Ignore
                    }
                    return false;
                }
            });
        }
    }

    /**
     * An image descriptor for images from a cache file
     * @author luis
     */
    private class FileImageDescriptor extends ImageDescriptor {
        private final File file;

        private FileImageDescriptor(final HttpServletRequest request, final HttpServletResponse response, final File file) {
            super(request, response);
            this.file = file;
        }

        @Override
        public void write() throws IOException {
            if (!setLastModified(file.lastModified())) {
                // File has not changed since last request. Return
                return;
            }
            try {
                setContentType(ImageType.getByContent(file).getContentType());
            } catch (final Exception e) {
                // Ignore
            }
            setContentLength(file.length());
            try {
                writeContents(new FileInputStream(file));
            } catch (final FileNotFoundException e) {
                sendError(HttpServletResponse.SC_NOT_FOUND);
            }
        }
    }

    /**
     * Base class for image descriptors
     * @author luis
     */
    private abstract class ImageDescriptor {
        private HttpServletRequest  request;
        private HttpServletResponse response;

        private ImageDescriptor(final HttpServletRequest request, final HttpServletResponse response) {
            this.request = request;
            this.response = response;
        }

        protected void sendError(final int code) {
            try {
                response.sendError(code);
            } catch (final IOException e) {
                // ignore
            }
        }

        protected void setContentLength(final long length) {
            response.setContentLength((int) length);
        }

        protected void setContentType(final String contentType) {
            response.setContentType(contentType);
        }

        protected boolean setLastModified(final long lastModified) {
            final long ifModifiedSince = request.getDateHeader("If-Modified-Since");
            if (ifModifiedSince > 0 && lastModified <= ifModifiedSince) {
                // The contents have not changed
                response.setStatus(HttpServletResponse.SC_NOT_MODIFIED);
                return false;
            } else {
                response.setDateHeader("Last-Modified", lastModified);
                return true;
            }
        }

        protected abstract void write() throws IOException;

        protected void writeContents(final InputStream in) {
            try {
                response.setStatus(HttpServletResponse.SC_OK);
                IOUtils.copy(in, response.getOutputStream());
                response.flushBuffer();
            } catch (final Exception e) {
                sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            } finally {
                IOUtils.closeQuietly(in);
            }
        }
    }

    public static final String  ROOT_CACHE_PATH       = "/pages/images/cache";
    public static final String  IMAGES_CACHE_PATH     = ROOT_CACHE_PATH + "/images";
    public static final String  THUMBNAILS_CACHE_PATH = ROOT_CACHE_PATH + "/thumbnails";

    private static final String IMAGE_KEY             = "imageByIdServlet";
    private static final String THUMBNAIL_KEY         = "thumbnailByIdServlet";

    private static final long   serialVersionUID      = 7494480285703279642L;
    private static final Log    LOG                   = LogFactory.getLog(ImageByIdServlet.class);

    /**
     * Removes both the image and thumbnail with the given id from the cache
     */
    public static void removeFromCache(final ServletContext context, final Long id) {
        final ImageByIdServlet imageServlet = (ImageByIdServlet) context.getAttribute(ImageByIdServlet.IMAGE_KEY);
        final ImageByIdServlet thumbnailServlet = (ImageByIdServlet) context.getAttribute(ImageByIdServlet.THUMBNAIL_KEY);
        imageServlet.removeFromCurrentCache(id);
        thumbnailServlet.removeFromCurrentCache(id);
    }

    private ImageService        imageService;
    private TransactionTemplate transactionTemplate;
    private boolean             isThumbnail;
    private boolean             useCache;
    private File                cacheDir;

    @Override
    public void init(final ServletConfig config) throws ServletException {
        super.init(config);
        final ServletContext context = getServletContext();

        // Resolve dependencies
        SpringHelper.injectBeans(context, this);

        // Check if we will display thumbnails
        isThumbnail = "true".equals(config.getInitParameter("thumbnail"));

        // Check if we will use the disk cache
        try {
            useCache = "true".equals(CyclosConfiguration.getCyclosProperties().getProperty("cyclos.imageDiskCache.enable", "true"));
        } catch (final Exception e) {
            useCache = false;
        }

        // When using the disk cache, create the directories
        if (useCache) {
            cacheDir = new File(getServletContext().getRealPath(isThumbnail ? THUMBNAILS_CACHE_PATH : IMAGES_CACHE_PATH));
            LOG.debug("Using disk cache for " + (isThumbnail ? "thumbnails" : "images") + " at " + cacheDir.getAbsolutePath());
            cacheDir.mkdirs();
        }

        // Store this servlet on the application context
        context.setAttribute(isThumbnail ? IMAGE_KEY : THUMBNAIL_KEY, this);
    }

    /**
     * Removes the image with the given id from the cache of this servlets image type (image or thumbnail)
     */
    public void removeFromCurrentCache(final Long id) {
        if (id == null) {
            return;
        }
        final File file = new File(cacheDir, id.toString());
        file.delete();
    }

    @Inject
    public void setImageService(final ImageService imageService) {
        this.imageService = imageService;
    }

    @Inject
    public void setTransactionTemplate(final TransactionTemplate transactionTemplate) {
        this.transactionTemplate = transactionTemplate;
    }

    @Override
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        // Get the image id
        long id;
        try {
            id = Long.parseLong(request.getParameter("id"));
        } catch (final Exception e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        ImageDescriptor image = null;
        if (useCache) {
            image = readFromFile(request, response, id);
        } else {
            image = readFromDB(request, response, id);
        }
        image.write();
    }

    private DBImageDescriptor readFromDB(final HttpServletRequest request, final HttpServletResponse response, final long id) {
        return new DBImageDescriptor(request, response, id);
    }

    private FileImageDescriptor readFromFile(final HttpServletRequest request, final HttpServletResponse response, final long id) {
        final File file = new File(cacheDir, String.valueOf(id));
        if (!file.exists()) {
            new DBImageDescriptor(request, response, id).writeIntoFile(file);
        }
        return new FileImageDescriptor(request, response, file);
    }
}
