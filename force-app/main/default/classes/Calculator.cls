public with sharing class Calculator {
    // Private instance variables
    Integer num1;
    Integer num2;
    Integer result;

    // ➕ Method 1: Addition of two integers
    public Integer addition(Integer a, Integer b) {
        result = a + b; 
        return result; 
    }
    // ➕ Method 2: Addition of three integers (Method Overloading)
    public Integer addition(Integer a, Integer b, Integer c){
        result = a + b + c; 
        return result; 
    }
     // ✖️ Multiplication
    public Integer multiplication(Integer a, Integer b) {
        result = a * b; 
        return result; 
    }
    // ➗ Division (ensures larger number is numerator)
    public Integer divison(Integer a, Integer b) {
        if(a > b){
            result = a / b; 
        }else{
            result = b / a;
        }
        return result; 
    }
     // ➖ Subtraction (larger - smaller)
    public Integer subtraction(Integer a, Integer b) {
        if(a > b){
            result = a - b; 
        }else{
            result = b - a;
        }
        return result; 
    }
}