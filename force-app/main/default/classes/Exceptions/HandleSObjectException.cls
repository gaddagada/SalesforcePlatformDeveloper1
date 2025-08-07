public with sharing class HandleSObjectException extends Exception{
    public static void handleSObjectException() {
        Account v; 
        try{
            Account acc = new Account(Name='Heart two', Description='New Account'); 
            insert acc; 
            v = [select Name from Account where Id=: acc.Id];
            String s = v.Description; // result in sObject exception
        }catch(SObjectException se){
            System.debug('the following exception  occurred ' + se.getMessage());
        }
        System.debug('Fetched account is ' + v);
    }
}