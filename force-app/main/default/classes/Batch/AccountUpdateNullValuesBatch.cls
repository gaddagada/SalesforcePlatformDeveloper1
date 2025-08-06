global with sharing class AccountUpdateNullValuesBatch implements Database.Batchable<sObject> {
    integer recordsProcessed = 0; 

    /* 
     * Update all the account records with blank billing address with Dummy Values and also dummy account number. 
     */
    global Database.QueryLocator start(Database.BatchableContext BC){
        System.debug('Inside Start method');

        String query = 'select id, BillingCity, AccountNumber, BillingCountry, BillingStreet, BillingState from Accunt where AccountNumber=null or BillingStreet=null or BillingCity=null BillingState=null or BillingCountry=null';
        return Database.getQueryLocator(query); 
    }
    global void execute(Database.BatchableContext BC, List<Account> accList){
        System.debug('Inside Execute method');


        for(Account acc: accList){
            if(String.isBlank(acc.AccountNumber)){
                acc.AccountNumber = 'XXXX';
            }
            if(String.isBlank(acc.BillingCity)){
                acc.billingCity = 'Sugarland';
            }
            if(String.isBlank(acc.billingCountry)){
                acc.billingCountry = 'United States';
            }
            if(String.isBlank(acc.billingState)){
                acc.billingState = 'Texas';
            }
        }
        update accList;
    }
    global void finish(Database.BatchableContext BC){
        System.debug('Inside the finish method'); 
    }
    
}