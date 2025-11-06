public with sharing class MethodsInExceptionClass {
    public void MethodsInExceptionClassCodeExample() {
        try{
            Lead l = [SELECT Name FROM Lead LIMIT 1];
            String des = l.Description; // throw an exception since Description is null
        }catch(Exception e){
            System.debug('Exception type caught: ' + e.getTypeName());
            System.debug('Message: '+ e.getMessage());
            System.debug('Cause: ' + e.getCause());
            System.debug('Line Number: ' + e.getLineNumber());
            System.debug('Stack trace:' + e.getStackTraceString());
        }
    }
}