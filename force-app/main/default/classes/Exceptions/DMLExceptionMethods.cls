public with sharing class DMLExceptionMethods {
    public static void DMLExceptionMethods() {
       // Create  3 account records 
        Account m1 = new Account(Name='coffeemaker', Description='Kitchenware');
        Account m2 = new Account(); 
        Account m3 = new Account(); 
        // Create a empty list and added records to list 
        Account[] mList = new List<Account>(); 
        mList.add(m1); 
        mList.add(m2); 
        mList.add(m3); 

        try{
            insert mList; // throw an exception 
        }catch(DMLException de){
                Integer numErrors = de.getNumDml(); // gets the total number of saved records 
                System.debug('getNumDML = ' + numErrors);
                for(Integer i = 0; i < numErrors; i++){ // returns the fields that are causing the issue for that saved record
                    System.debug('getDmlFieldNames =' + de.getDmlFieldNames(i)); // returns the names of the fields that caused the error
                    System.debug('getDmlMessage = ' + de.getDmlMessage(i)); // provides the reason for the failure
                }    
            }
    }
}