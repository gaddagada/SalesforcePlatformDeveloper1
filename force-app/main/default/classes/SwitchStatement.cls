public with sharing class SwitchStatement {
    public static void SwitchStatement() {
        integer num = 2; 
        switch on num {
            when 2 {
                System.debug('num is 2');
            }
            when -3{
                System.debug('num is -3');
            }
            when else{
                System.debug('num is neither 2 nor 3');
            }
        }
    }
    public static void switchStatementExample(){
        integer yourScore = 80; 
        switch on yourScore{
            when 85,90, 95, 100{
                System.debug('FIRST PLACE'); 
            }
            when 80, 75{
                System.debug('SECOND PLACE');
            }
            when 70, 65, 60{
                System.debug('THIRD PLACE');
            }
            when else{
                System.debug('WORK HARD...NEXT TIME');
            }
        }
    }
    public static void switchStatementPlaceMedalColor(){
        Integer place = 1;
        String medal_color; 
        switch on place{
            when 1 {
                medal_color = 'Gold';
            }
            when 2 {
                medal_color = 'Silver';
            }
            when 3 {
                medal_color = 'Bronze';
            }
            when else {
                medal_color = 'Null';
            }
        }

        if(medal_color != 'null'){
            System.debug('You have scored ' + medal_color + ' medal. Congratulations!!'); 
        }else{
            System.debug('Work Hard... Next Time');
        }
    }
}