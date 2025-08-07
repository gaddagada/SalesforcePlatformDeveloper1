public with sharing class HandleDMLException extends Exception {
    public  static void DMLException() {
        try{
            Lead l = [select Name from Lead limit 1];
            string des = l.Description; // throw an exceptioln 
        }catch(Exception e){
            System.debug('Exception type caught: ' + e.getTypeName());
            System.debug('Message: ' + e.getMessage());
            System.debug('Cause: ' + e.getCause());
            System.debug('Line Number: ' + e.getLineNumber());
            System.debug('Stack trace ' + e.getStackTraceString());
        }
    }
}