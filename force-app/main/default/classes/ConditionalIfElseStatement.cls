public with sharing class ConditionalIfElseStatement {
    public static void ConditionalIfElseStatementGreaterThan90() {
        Integer score = 95; 
        if(score > 90){
            System.debug('You have scored the highest marks'); 
        }else{
            System.debug('Work hard... You will get there');
        }
    }
    public static void ConditionalIfElseStatementLessThan90() {
        Integer score = 75; 
        if(score > 90){
            System.debug('You have scored the highest marks'); 
            System.debug('Congrats!!!');
        }else{
            System.debug('Work hard... You will get there');
            System.debug('All the best for the next exam!!');
        }
    }
}