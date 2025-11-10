trigger UpsertContact on Contact (before insert) {
    Account[] acctsList = [SELECT Id, Name, BillingCity FROM Account WHERE Name='Account1'];
    for(Account a: acctsList){
        a.BillingCity = 'Dallas'; 
    }

    Account newAcct = new Account(Name='Account2', BillingCity='Austin'); 
    acctsList.add(newAcct); 
    
    upsert acctsList;
}