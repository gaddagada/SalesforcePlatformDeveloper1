public with sharing class AcctUtility {
    public static void mainProcessing() {
        try{
            insertAccount();
        }catch(AcctException ae){
            System.debug('Message :' + ae.getMessage());
            System.debug('Cause: ' + ae.getCause());
            System.debug('Line Number '+ ae.getLineNumber());
        }
    }
    public static void insertAccount(){
        try{
            Account a = new Account(); 
            insert a; 
        }catch(DMLException de){
            throw new AcctException('account cannot be created becuase the required field name iis missing ', de); 
        }
    }
}