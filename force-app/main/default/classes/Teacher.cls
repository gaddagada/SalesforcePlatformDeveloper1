public with sharing class Teacher {
    public string name; 
    public integer age; 
    public static string schoolName; 

    public void display() {
        System.debug('Teacher Name ' + name);
        System.debug('Teacher Age ' + age);
        System.debug('School Name ' + schoolName);

    }
}