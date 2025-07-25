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
}