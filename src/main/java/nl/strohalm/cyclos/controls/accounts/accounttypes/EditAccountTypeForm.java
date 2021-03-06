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
package nl.strohalm.cyclos.controls.accounts.accounttypes;

import java.util.Map;

import nl.strohalm.cyclos.controls.BaseBindingForm;

/**
 * Form used to edit an account type
 * @author luis
 */
public class EditAccountTypeForm extends BaseBindingForm {
    private static final long serialVersionUID = -4380600436903942725L;
    private long              accountTypeId;

    public Map<String, Object> getAccountType() {
        return values;
    }

    public Object getAccountType(final String key) {
        return values.get(key);
    }

    public long getAccountTypeId() {
        return accountTypeId;
    }

    public void setAccountType(final Map<String, Object> map) {
        values = map;
    }

    public void setAccountType(final String key, final Object value) {
        values.put(key, value);
    }

    public void setAccountTypeId(final long accountTypeId) {
        this.accountTypeId = accountTypeId;
    }

}
