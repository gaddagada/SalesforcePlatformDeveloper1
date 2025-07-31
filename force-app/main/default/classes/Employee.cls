public with sharing class Employee {
    string name; 
    integer age; 
    integer salary; 

    public void display() {
        System.debug('Name '+ name); 
        System.debug('Age '+ age);
        System.debug('Salary ' + salary);
    } 
    public Employee(String n, integer a){
        name = n; 
        age = a; 
        salary = 40000; 
    }
    public Employee(String n, integer a, integer s){
        name = n; 
        age = a; 
        salary = s; 
    }
    public Employee(){
        name = 'Mytutorialrack'; 
        age = 7; 
        salary = 100000;
    }
}