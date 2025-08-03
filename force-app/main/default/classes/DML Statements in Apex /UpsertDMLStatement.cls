public with sharing class UpsertDMLStatement {
    public static void upsertExample() {
        List<Account> acctList = [select id, name, billingCity from account where name like 'United%'];
        for(Account a : acctList){
            a.BillingCity = 'Washington, DC';
        }
        Account a1 = new Account(Name= 'Apple');
        Account a2 = new Account(Name= 'Facebook');
        acctList.add(a1); 
        acctList.add(a2); 
        upsert acctList; 
        System.debug('Account upserted');

    }
}