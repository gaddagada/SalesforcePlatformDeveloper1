global class AccountNumberUpdateBatch implements Database.Batchable<sObject>, Database.Stateful{
    integer recordsProcessed=0;
global Database.QueryLocator start(Database.BatchableContext BC)
    {
        System.debug('Inside Start method');
        String query='select id,BillingCity, AccountNumber, BillingCountry, BillingStreet, BillingState from Account where accountNumber=\'XXXX\'  ';
        return Database.getQueryLocator(query);
    }
    global void execute (Database.BatchableContext BC,List<Account> accList)
    {
        System.debug('Inside Execute method');
        for(Account acc:accList)
        {
            acc.accountNumber='AAAA';
            recordsProcessed=recordsProcessed+1;
            
        }
        update accList;
    }
    global void finish(Database.BatchableContext BC)
    {
        System.debug('Inside Finish Method');
        System.debug('Number of records processed'+recordsProcessed);
    }
}