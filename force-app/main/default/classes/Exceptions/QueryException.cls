public with sharing class QueryException extends Exception {
    public void QueryExceptionCodeExample() {
        try{
            List<Lead> lm = [select Name from Lead where Name like 'mike%']; // QueryException if no records found
            System.debug('size of the list ' + lm.size());
            Lead l = [select Name from Lead where Name like 'xyz%' limit 1];
        }catch(QueryException e){
            System.debug('the following exception has occured: ' + e.getMessage());
        }
    }

    public void QueryExceptionCodeExampleNotRunIntoException() {
        try{
            List<Lead> lm = [select Name from Lead where Name like 'mike%']; // QueryException if no records found
            System.debug('size of the list ' + lm.size());
            Lead l = [select Name from Lead where Name like 'mike%' limit 1];
        }catch(QueryException e){
            System.debug('the following exception has occured: ' + e.getMessage());
        }
    }
}