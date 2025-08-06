global with sharing class AccountBillingStreetUpdateBatch implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC){
        System.debug('Inside Start method');
        String query='select id,BillingCity, AccountNumber, BillingCountry, BillingStreet, BillingState from Account where BillingStreet=null  ';
        return Database.getQueryLocator( query);
    }
    global void execute (Database.BatchableContext BC,List<Account> accList)
    {
        System.debug('Inside Execute method');
        for(Account acc:accList)
        {
            acc.billingStreet='3725 hershey ln';
            
        }
        update accList;
    }
    global void finish(Database.BatchableContext BC)
    {
        System.debug('Inside Finish Method');
    }
}