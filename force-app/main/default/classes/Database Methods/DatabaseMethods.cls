public with sharing class DatabaseMethods {
    
    // Difference between DML Statement vs Database Statement 
    public void partialUpdateDatabaseMethod(){
        Account acc1 = new Account(Name='Jack & Jill'); 
        Account acc2 = new Account(); 
        Account acc3 = new Account(Name='McDonalds'); 
        List<Account> accountsToInsert = new List<Account>(); 
        accountsToInsert.add(acc1);
        accountsToInsert.add(acc2);
        accountsToInsert.add(acc3);

        // none of the queries get inserted if DML insert is used.
        insert accountsToInsert;


    /* If Database.insert(accountsToInsert, false); 
     * This means partial insert/ update is allowed.  Means even though one record is 
     * having an issue fo not worry please go ahead and progress with the rest of the 
     * records.  
    */
        Database.insert(accountsToInsert, false); 
        System.debug('Records Successfully inserted');
    }

    
}