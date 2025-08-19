public with sharing class AccountCustomController {
    private final Account account; 

    public AccountCustomController(){
        account = [select id, Name, Site from Account where Id=: ApexPages.currentPage().getParameters().get('id')];
    }

    public Account getAccount(){
        return account;
    }

    public PageReference savetheRecord() {
        update account; 
        return null;
    }

}