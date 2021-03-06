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
package nl.strohalm.cyclos.services.elements;

import java.util.List;

import nl.strohalm.cyclos.dao.members.MessageCategoryDAO;
import nl.strohalm.cyclos.entities.members.messages.MessageCategory;
import nl.strohalm.cyclos.entities.members.messages.MessageCategoryQuery;
import nl.strohalm.cyclos.utils.validation.ValidationException;
import nl.strohalm.cyclos.utils.validation.Validator;

/**
 * Service implementation for Message Category.
 * @author jeancarlo
 */
public class MessageCategoryServiceImpl implements MessageCategoryService {

    private MessageCategoryDAO messageCategoryDao;

    public MessageCategoryDAO getMessageCategoryDao() {
        return messageCategoryDao;
    }

    public synchronized List<MessageCategory> listAll() {
        return messageCategoryDao.findAll();
    }

    public MessageCategory load(final Long id) {
        return messageCategoryDao.load(id);
    }

    public int remove(final Long... ids) {
        return messageCategoryDao.delete(ids);
    }

    public MessageCategory save(final MessageCategory messageCategory) {
        validate(messageCategory);
        MessageCategory messageCategoryAux = null;
        if (messageCategory.isTransient()) {
            messageCategoryAux = messageCategoryDao.insert(messageCategory);
        } else {
            messageCategoryAux = messageCategoryDao.update(messageCategory);
        }
        return messageCategoryAux;
    }

    public List<MessageCategory> search(final MessageCategoryQuery query) {
        return messageCategoryDao.search(query);
    }

    public void setMessageCategoryDao(final MessageCategoryDAO messageCategoryDao) {
        this.messageCategoryDao = messageCategoryDao;
    }

    public void validate(final MessageCategory messageCategory) throws ValidationException {
        getValidator().validate(messageCategory);
    }

    private Validator getValidator() {
        final Validator validator = new Validator();
        validator.property("name").required().maxLength(200);
        return validator;
    }

}