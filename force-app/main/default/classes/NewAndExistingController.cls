public with sharing class NewAndExistingController {
    public Account account {get; set;}

    public NewAndExistingController(){
        Id id=ApexPages.currentPage().getParameters().get('id');
        account = (id == null)?new Account():[select name,Phone, industry from Account where Id=:id]; 
    }

    public PageReference save(){
        try{
            upsert(account);
        }catch(System.DMLException e){
            ApexPages.addMessages(e); 
            return null; 
        }
        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return redirectSuccess;
    }
    
}