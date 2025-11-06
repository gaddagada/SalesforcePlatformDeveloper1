public with sharing class HandleExceptionInApex {
    public static void HandleExceptionInApexUsingCatch(){
    // Creating a new lead record 
            try{
                // Add the required fields to avoid exception
                Lead l = new Lead(LastName = 'Smith', Company = 'Cardtronics'); 
                insert l;
            }catch(DMLException e){
                System.debug('The following exception has occurred' + e.getMessage());
            }
            System.debug('trying to insert a new lead record');   
    }
}