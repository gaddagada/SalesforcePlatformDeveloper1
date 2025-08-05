trigger CreateDummyContactOnAccount on Account (after insert, before delete, before insert) {
    if(Trigger.isAfter && Trigger.isInsert){
        /* Whenever a new account is created, create a dummy contact under the account and 
         * the dummy contact will have the name 'Dummy'+'<Account Name>'
         */
        List<Contact> contactList = new List<Contact>(); 
        for(Account acc: Trigger.new){
            Contact con = new Contact(); 
            con.LastName = acc.Name; 
            con.FirstName = 'Dummy'; 
            con.AccountId = acc.Id; 
            con.MailingCity = acc.BillingCity; 
            con.MailingStreet = acc.BillingStreet; 
            con.mailingState = acc.BillingState;
            contactList.add(con); 
        }
        insert contactList;
    } else if(Trigger.isBefore){
        /*
         * Account that has related Contacts should not be deleted. Error should be thrown.  
         */
        if(Trigger.isDelete){
            List<Account> accList = new List<Account>(); 
            Set<Id> accIdSet = new Set<Id>(); 
            for(Account acc: Trigger.old){
                accIdSet.add(acc.Id); 
            }
            Map<Id,Account> accts = new Map<Id,Account>([select id,name,(select id from contacts) from account where id in :accIdSet]); 
            for(Account acc: Trigger.old){
                if(accts.get(acc.id).contacts.size() > 0){
                    acc.addError('Account cannot be deleted because it has contacts associated with it');
                }
            }
        }
    }
}

