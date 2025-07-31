public with sharing class Student {
    // Instance variables
    private String name;
    private String schoolName;
    integer age;

    // No-argument constructor
    public Student() {
        name = 'Dipika';
        schoolName = 'MyTutorialRack';
    }

    // Parameterized constructor
    public Student(String n, String s) {
        name = n;
        schoolName = s;
    }

    // Method to display student details
    public void displayDetails() {
        System.debug('Name of the student: ' + name);
        System.debug('School name: ' + schoolName);
    }


    public void setAge(integer a){
        if(a < 0 || a > 100){
            age = 99;
        }else{
            age = a;
        }
    }

    public void setName(string n){
        Pattern pat = Pattern.compile('[/d/]'); 
        Matcher matcher = pat.matcher(n);
        Boolean matches = matcher.find(); 
        System.debug('matches ' + matches);
        if(matches ||  n == ''){
            name = 'MyTututorialrack'; 
        }else{
            name = n;
        }
    }

    public void display(){
        System.debug('Name ' + name); 
        System.debug('Age ' + age);
    }
    
}