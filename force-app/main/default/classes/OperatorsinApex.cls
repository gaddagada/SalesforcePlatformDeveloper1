public with sharing class OperatorsinApex {
    public void operators() {

        // operators in long form 
        Integer result = 100; 
        result = result + 10; 
        System.debug('result = result + 10' + result); // 110

        result = result - 5; 
        System.debug('result = result - 5' + result); // 105

        result = result * 10; 
        System.debug('result = result * 10' + result); // 1050

        result = result / 2; 
        System.debug('result = result / 2' + result); // 525

        // short form operators 
        integer output = 100; 

        output += 10; 
        System.debug('output += 10 ' + output); //110

        output -= 5; 
        System.debug('output -= 5 ' + output); //105

        output *= 10; 
        System.debug('output *= 10 ' + output); //1050

        output /= 2; 
        System.debug('output /= 2 ' + output); //525    
        

    }
}