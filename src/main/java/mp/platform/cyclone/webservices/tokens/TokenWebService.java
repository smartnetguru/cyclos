/*
 *
 *    This file is part of Cyclos.
 *
 *    Cyclos is free software; you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation; either version 2 of the License, or
 *    (at your option) any later version.
 *
 *    Cyclos is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with Cyclos; if not, write to the Free Software
 *    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 *
 *
 */

package mp.platform.cyclone.webservices.tokens;

import nl.strohalm.cyclos.entities.services.ServiceOperation;
import mp.platform.cyclone.webservices.Permission;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import java.math.BigDecimal;

@WebService
public interface TokenWebService {

    @Permission( { ServiceOperation.DO_PAYMENT, ServiceOperation.RECEIVE_PAYMENT })
    @WebMethod
    String generateToken(@WebParam(name = "params") GenerateTokenParameters generateTokenParameters);

    @Permission( { ServiceOperation.DO_PAYMENT, ServiceOperation.RECEIVE_PAYMENT })
    @WebMethod
    void redeemToken(@WebParam(name = "params") RedeemTokenParameters redeemTokenParameters);

    @Permission( { ServiceOperation.DO_PAYMENT, ServiceOperation.RECEIVE_PAYMENT })
    @WebMethod
    void senderRedeemToken(@WebParam(name = "params") SenderRedeemTokenParameters redeemTokenParameters);

    @Permission( { ServiceOperation.DO_PAYMENT, ServiceOperation.RECEIVE_PAYMENT })
    @WebMethod
    BigDecimal getTokenAmount(@WebParam(name = "params") String tokenId);
    
}
