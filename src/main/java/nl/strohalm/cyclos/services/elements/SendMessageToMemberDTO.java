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

import nl.strohalm.cyclos.entities.members.Member;

/**
 * DTO for sending a message to a single member
 * @author luis
 */
public abstract class SendMessageToMemberDTO extends SendMessageDTO {

    private static final long serialVersionUID = -1816708181203730779L;
    private Member            toMember;

    public Member getToMember() {
        return toMember;
    }

    @Override
    public boolean isBulk() {
        return false;
    }

    public abstract boolean requiresMemberToReceive();

    public void setToMember(final Member toMember) {
        this.toMember = toMember;
    }

}