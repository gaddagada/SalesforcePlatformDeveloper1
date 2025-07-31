public with sharing class Student {
    // Instance variables
    private String name;
    private String schoolName;

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

}