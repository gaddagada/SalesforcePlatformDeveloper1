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

    public void databaseMethodSaveResultRetrieveSuccessAndFailure(){
        Account acc1 = new Account(Name='Jack in the Box'); 
        Account acc2 = new Account(); 
        Account acc3 = new Account(Name='Walmart'); 
        List<Account> accountsToInsert = new List<Account>(); 
        accountsToInsert.add(acc1);
        accountsToInsert.add(acc2);
        accountsToInsert.add(acc3);

        Database.SaveResult[] results =  Database.insert(accountsToInsert, false); 
        for(Database.SaveResult res : results){
            if(res.isSuccess()){
                System.debug('Records Successfully inserted ' + res.getId());
            }else{
                for(Database.Error objError: res.getErrors()){
                    System.debug('Records Failed  ' + objError.getMessage());
                    System.debug('Fields Causing the failure ' + objError.getFields());

                }
            }
        }
    }

    public static void employeeDatabaseMethods(){
        Employee__c emp1 = new Employee__c(First_Name__c = 'Arthur', Last_Name__c = 'Spooner', age__c = 50, Email__c = 'arthurSpooner@yahoo.com', mobile_Number__c = '9987654444'); 
        Employee__c emp2 = new Employee__c(First_Name__c = 'Carry', Last_Name__c = 'Spooner', age__c = 1000); 

        List<Employee__c> listOfRecords = new List<Employee__c>(); 
        listOfRecords.add(emp1); 
        listOfRecords.add(emp2);

        Database.SaveResult[] results =  Database.insert(listOfRecords, false); 
        for(Database.SaveResult res : results){
            if(res.isSuccess()){
                System.debug('Records Successfully inserted ' + res.getId());
            }else{
                for(Database.Error objError: res.getErrors()){
                    System.debug('Records Failed  ' + objError.getMessage());
                    System.debug('Fields Causing the failure ' + objError.getFields());

                }
            }
        }
    }

    
}