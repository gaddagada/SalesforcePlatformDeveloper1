public with sharing class StaticAndNonStaticVariableExample {
    public integer num1; // non-static variable 
    public static integer num2; // static variable

    public void increment() {
        num1 += 10; // num1 = num1 + 10; 
        num2 += 10; // num2 = num2 + 10; 
    }

    public void display(){
        System.debug('num1 ' + num1);
        System.debug('num2 ' + num2);

    }


}