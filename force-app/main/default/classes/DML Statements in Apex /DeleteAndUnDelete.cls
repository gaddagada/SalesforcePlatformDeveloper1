public with sharing class DeleteAndUnDelete {
    public static void deleteEmployeeRecords() {
        List<Employee__c> recordsToDelete  = [select  id, First_Name__c, Last_Name__c, Mobile_Number__c, Email__c from Employee__c where Address__c = null and email__c = null ];
        delete recordsToDelete; 
    }

    public static void undeleteEmployeeRecords() {
        List<Employee__c> recordsToDelete  = [select  id, First_Name__c, Last_Name__c, Mobile_Number__c, Email__c from Employee__c where Address__c = null and email__c = null ALL ROWS];
        undelete recordsToDelete; 
        System.debug('Records Restored');
    }

    public static void updateEmployeeRecords() {
        List<Employee__c> recordsToUpdate  = [select id, First_Name__c, Last_Name__c, Mobile_Number__c, Email__c from Employee__c where Address__c = null and email__c = null ALL ROWS];
        for(Employee__c emp : recordsToUpdate){
            emp.Address__c = 'New York'; 
            emp.Email__c = 'test@yahoo.com'; 
            emp.Mobile_Number__c  = '7889990000';
            emp.age__c = 17;
        }
        update recordsToUpdate; 
    }
}