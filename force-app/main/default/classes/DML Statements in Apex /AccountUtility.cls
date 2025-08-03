public with sharing class AccountUtility {

    public void  createSingleAccount(String n,String bc) {
        Account acc = new Account(Name = n,billingCity = bc);
        insert acc;
        System.debug('One Account got created Successfully '+acc.id);
    }
    public void createMultipleAccount(integer numberOfAccountsToCreate, String nameOfAccount){
        List<Account> listOfAccountRecordsToBeCreated = new List<Account>(); 
        for(integer i = 0; i < numberOfAccountsToCreate; i++){
            Account acc = new Account(name = nameOfAccount + i); 
            listOfAccountRecordsToBeCreated.add(acc); 
        }
        insert listOfAccountRecordsToBeCreated; 
        System.debug('Multiple Account records created');
    }

    public void updateAccount(String name){
        Account acc = [select id, name, billingCity, billingState, billingCountry from account where name=:name limit 1];
        System.debug('Id of the record retrieved ' + acc.id);
        acc.billingCity = 'Austin'; 
        acc.billingState = 'Texas'; 
        acc.BillingCountry = 'USA';
        update acc; 
        System.debug('Account updated successfully'); 
    }

    public void deleteMultipleAccount(String nameOfAccount){
        List<Account> listOfAccountRecordsToBeCreated = new List<Account>();
        String matchString=nameOfAccount + '%';
        listOfAccountRecordsToBeCreated =[select id,name,billingCity,billingState,billingCountry from account where name like :matchString];
        delete listOfAccountRecordsToBeCreated;
        System.debug('Records deleted successfully');
    }

}