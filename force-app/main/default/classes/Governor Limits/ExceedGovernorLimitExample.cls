public with sharing class ExceedGovernorLimitExample {
    public static void DMLExceptionExceedGovenorLimitExample() {
        for(integer x = 0; x < 200; x++){
            Account newAcc = new Account(Name='myAccount - ' + x);
            try{
                insert newAcc; //DML 
                System.debug(Limits.getLimitDmlStatements());
            }catch(Exception ex){
                System.debug('Caught the exception ');
                System.debug(ex);
            }
        }
        insert new Account(Name='my Account-Mytutorialrack');
    }
}