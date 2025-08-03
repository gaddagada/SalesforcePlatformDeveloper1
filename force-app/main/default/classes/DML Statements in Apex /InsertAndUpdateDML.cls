public with sharing class InsertAndUpdateDML {
    //insert Single DML Record
    public static void insertSingleDMLRecord(){
        Lead obj = [select id, lastname, leadsource, company, mobilePhone, Email from Lead where company = 'Mytutorialrack' limit 1]; 
        System.debug('Id of the lead ' + obj.id); 
        obj.LeadSource = 'Web'; 
        obj.MobilePhone = '7777777777';
        obj.email = 'deepikakhanna123@gmail.com'; 

        update obj; // this means the record has been updated in Salesforce
    }

    //bad Way of Inserting Records using DML
    public static void badWayofInsertingRecordsDML(){
        List<Lead> listOfLeadRecords = [select id, lastName, Company, Phone from lead where phone = null]; 
        for(Lead l : listOfLeadRecords){
            l.Phone = '9999999999';
            update l; 
        }
    }


     //good Way of Inserting Records using DML
    public static void goodWayofInsertingRecordsDML(){
        List<Lead> listOfLeadRecords = [select id, lastName, Company, Phone from lead where phone = null]; 
        List<Lead> recordsToUpdate = new List<Lead>();
        for(Lead l : listOfLeadRecords){
            l.Phone = '9999999999';
            recordsToUpdate.add(l);
        }
        update recordsToUpdate; 
    }



     //good Way of Inserting Records using DML - shortcut of what's done above 
    public static void goodWayofInsertingRecordsDMLShortcut(){
        List<Lead> listOfLeadRecords = [select id, lastName, Company, Phone from lead where phone like '999%']; 
        // List<Lead> recordsToUpdate = new List<Lead>();
        for(Lead l : listOfLeadRecords){
            l.Phone = '5555555555';
        }
        update listOfLeadRecords; 
    }

}