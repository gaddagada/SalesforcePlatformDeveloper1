public with sharing class SObjectInApex {
    public void sObjectStoringMultipleObjectsInSalesforce() {
        List<Account> objects = new List<Account>(); 
        Account acc1 = new Account(Name = 'MyTutorialRackAccount');
        Opportunity opp2 = new Opportunity(Name='MyTutorialRackOpportunity');
        Case cas3 = new Case(Status='New', Origin='Phone');

        // add the records to the list 
        // list of sObject 
        objects.add(acc1); 
        // objects.add(opp2); 
        // objects.add(cas3);
        System.debug('Elements in the List ' + objects);
    }
}