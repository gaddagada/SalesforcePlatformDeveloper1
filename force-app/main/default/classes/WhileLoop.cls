public with sharing class WhileLoop {
    public static void whileLoophileLoopIncrementFrom1To10() {
        // display 1 to 10 
        integer i = 1; 
        while(i <= 10){
            System.debug('value of i = ' + i);
            i++;
        }
    }

    public static void whileLoopIncrementFrom1To100() {
        // display 1 to 10 
        integer i = 1; 
        while(i <= 10){
            System.debug('value of i = ' + i);
            i+=10;
        }
    }

    public static void whileLoopIncrementFrom10To1() {
        // display 10 to 1
        integer i = 10; 
        while(i >= 1){
            System.debug('value of i = ' + i);
            i--; 
        }
    }


}