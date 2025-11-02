public with sharing class ConditionalIfElseIfStatement {
    public static void ConditionalIfElseStatement() {
        Integer place = 1; 
        String medal_color;

        if(place == 1){
            medal_color = 'gold'; 
        }else if(place == 2){
            medal_color = 'silver'; 
        }else if(place == 3){
            medal_color = 'bronze';
        }else{
            medal_color = null;
        }
        System.debug('*****');
        if(medal_color != null){
            System.debug('You have scored ' + medal_color + 'Medal. Congratulations');
        }else{
            System.debug('You have not scored top 3 positions, please try next time.');
        }
    }

    public static void positiveNegativeZeroNumberUsingIfElseIf(){
        Integer num = 10; 
        if(num > 0){
            System.debug('Number is positive');
        }else if(num < 0){
            System.debug('Number is negative');
        }else{
            System.debug('Number is zero');
        }
        System.debug('if else ladder finished');
    }
    public static void topScore(){
        Integer topScore = 90, secondTopScore = 85, myScore = 89; 
        if(myScore > topScore){
            System.debug('I have svored the highest score');
        }else if((myScore > topScore) && (myScore > secondTopScore)){
            System.debug('I have scored greater than the second highest score'); 
        }else if ((myScore < topScore) && (myScore <secondTopScore) && (myScore > 70)){
            System.debug('You can do better...');
        }else{
            System.debug('Work Hard next time'); 
        }
    }

    public static void salaryIfElseIfExample(){
        Integer salary = 100000; 
        Decimal bonus, salaryAfterBonus; 
        if(salary >= 150000){
            bonus = 15; 
        }else if(salary >= 120000){
            bonus = 12;
        } else if(salary >= 100000){
            bonus = 10;
        }else{
            bonus = 5; 
        }

        salaryAfterBonus = salary + (salary * bonus/100);
        System.debug('Salary after bonus is ' + salary);
        System.debug('Bonus ' + bonus + '% applied');
        System.debug('Salary after bonus'+ salaryAfterBonus);  
    }
}

