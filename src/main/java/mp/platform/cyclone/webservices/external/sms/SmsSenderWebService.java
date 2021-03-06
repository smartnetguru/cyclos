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
package mp.platform.cyclone.webservices.external.sms;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

import mp.platform.cyclone.webservices.model.MemberVO;

/**
 * Web Service interface that should be implemented externally in order to send SMS messages
 * @author luis
 */
@WebService
public interface SmsSenderWebService {

    /**
     * Sends an SMS message to the given member
     */
    @WebMethod
    boolean send(@WebParam(name = "cyclosId") String cyclosId, @WebParam(name = "member") MemberVO member, @WebParam(name = "text") String text);

    @WebMethod
    boolean sendToNonMember(@WebParam(name = "cyclosId") String cyclosId, @WebParam(name = "mobileNumber") String mobileNumber, @WebParam(name = "text") String text);
}
