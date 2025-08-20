public with sharing class accountlistcontr {
    public ApexPages.StandardSetController acct{
        get{
            if(acct == null){
                acct = new ApexPages.StandardSetController(Database.getQueryLocator([SELECT name, accountNumber from Account]));
            }
            return acct;
        }
        set;
    }

    public List<Account> getAccounts(){
        return (List<Account>) acct.getRecords();
    }
} 