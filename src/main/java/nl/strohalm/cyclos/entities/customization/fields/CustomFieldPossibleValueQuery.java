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
package nl.strohalm.cyclos.entities.customization.fields;

import nl.strohalm.cyclos.utils.query.QueryParameters;

/**
 * Query parameters for custom field possible values
 * @author luis
 */
public class CustomFieldPossibleValueQuery extends QueryParameters {

    private static final long        serialVersionUID = -8878876942405358114L;
    private CustomField              field;
    private CustomFieldPossibleValue parentValue;

    public CustomField getField() {
        return field;
    }

    public CustomFieldPossibleValue getParentValue() {
        return parentValue;
    }

    public void setField(final CustomField customField) {
        this.field = customField;
    }

    public void setParentValue(final CustomFieldPossibleValue parentValue) {
        this.parentValue = parentValue;
    }

}
