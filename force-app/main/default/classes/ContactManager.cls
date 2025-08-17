public with sharing class ContactManager {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContact(){
        return [select id, LastName, Phone from Contact LIMIT 20];
    }
}