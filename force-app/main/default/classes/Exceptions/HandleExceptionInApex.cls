public with sharing class HandleExceptionInApex {
    public static void HandleExceptionInApexUsingCatch(){
    // Creating a new lead record 
            try{
                Lead l = new Lead(); 
                insert l;
            }catch(DMLException e){
                System.debug('The following exception has occurred' + e.getMessage());
            }
            System.debug('trying to insert a new lead record');   
    }
}