global class UpdateContactAddressInfo implements Database.Batchable<SObject> {

    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([
            SELECT Id, BillingStreet, BillingCity, BillingState, BillingPostalCode,
                (SELECT Id, MailingStreet, MailingCity, MailingState, MailingPostalCode
                    FROM Contacts)
            FROM Account
            WHERE BillingState = 'TX'
        ]);
    }

    global void execute(Database.BatchableContext bc, List<SObject> scope) {
        List<Contact> contactsToUpdate = new List<Contact>();

        for (SObject s : scope) {
            Account acct = (Account) s;
            if (acct.Contacts == null) continue;

            for (Contact c : acct.Contacts) {
                c.MailingStreet      = acct.BillingStreet;
                c.MailingCity        = acct.BillingCity;
                c.MailingState       = acct.BillingState;
                c.MailingPostalCode  = acct.BillingPostalCode;
                contactsToUpdate.add(c);
            }
        }

        if (!contactsToUpdate.isEmpty()) {
            update contactsToUpdate;
        }
    }

    global void finish(Database.BatchableContext bc) {
        // optional post-processing / logging
    }
}