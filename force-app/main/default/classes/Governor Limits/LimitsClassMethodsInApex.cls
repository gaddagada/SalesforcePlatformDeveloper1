public with sharing class LimitsClassMethodsInApex {
    public static void DMLExceptionExceedGovenorLimitExample() {
        List<Account> accList = new List<Account>(); 
        for(integer x = 0; x < 10; x++){
            Account newAcc = new Account(Name='Gayathri - ' + x);
            try{
                accList.add(newAcc);
            }catch(Exception ex){
                System.debug('Caught the exception ');
                System.debug(ex);
            }
        }
        insert accList;
        System.debug('Limits.getDmlStatements() ==> ' + Limits.getDmlStatements()); 
        System.debug('Limits.getDmlRows() ==> ' + Limits.getDmlRows());
        System.debug('Limits.getLimitDmlRows ==> ' + Limits.getLimitDmlRows()); 
        System.debug('Limits.getLimitDmlStatements() ==> ' + Limits.getLimitDmlStatements());
    }
}
