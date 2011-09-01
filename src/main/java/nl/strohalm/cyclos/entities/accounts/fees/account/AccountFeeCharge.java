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
package nl.strohalm.cyclos.entities.accounts.fees.account;

import java.math.BigDecimal;

import nl.strohalm.cyclos.entities.Entity;
import nl.strohalm.cyclos.entities.Relationship;
import nl.strohalm.cyclos.entities.accounts.MemberAccount;
import nl.strohalm.cyclos.utils.FormatObject;
import nl.strohalm.cyclos.utils.Period;

/**
 * Contains the amount that would be generated by an account fee for a given period of time
 * @author luis
 */
public class AccountFeeCharge extends Entity {

    public static enum Relationships implements Relationship {
        ACCOUNT("account"), ACCOUNT_FEE_LOG("accountFeeLog");
        private final String name;

        private Relationships(final String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }
    }

    private static final long serialVersionUID = 5536949224747161556L;
    private Period            period;
    private BigDecimal        availableBalance;
    private BigDecimal        amount;
    private MemberAccount     account;
    private AccountFeeLog     accountFeeLog;

    public MemberAccount getAccount() {
        return account;
    }

    public AccountFeeLog getAccountFeeLog() {
        return accountFeeLog;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public BigDecimal getAvailableBalance() {
        return availableBalance;
    }

    public Period getPeriod() {
        return period;
    }

    public void setAccount(final MemberAccount account) {
        this.account = account;
    }

    public void setAccountFeeLog(final AccountFeeLog accountFeeLog) {
        this.accountFeeLog = accountFeeLog;
    }

    public void setAmount(final BigDecimal amount) {
        this.amount = amount;
    }

    public void setAvailableBalance(final BigDecimal availableBalance) {
        this.availableBalance = availableBalance;
    }

    public void setPeriod(final Period period) {
        this.period = period;
    }

    @Override
    public String toString() {
        return getId() + ", period = " + period + ", account = " + account + ", amount = " + FormatObject.formatObject(amount);
    }

}