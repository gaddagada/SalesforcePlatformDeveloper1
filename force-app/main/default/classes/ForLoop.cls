public with sharing class ForLoop {
    public static void forLoopIncrementFrom1To5() {
        // display 1 to 5 
        for(integer i=1; i<=5; i++){
            System.debug('value of i = ' + i); 
        }
    }

    public static void forLoopDecrementFrom10To0(){
        for(integer i = 1; i >= 0; i = i - 2){
            System.debug('value of i = ' + i); 
        }
    }

    
} 