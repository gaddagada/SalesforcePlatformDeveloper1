trigger CreateDummyContactOnAccount on Account (after insert, before delete, before insert) {
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
}

