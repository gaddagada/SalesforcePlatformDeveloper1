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

    public static void forLoopListOrSetDataTypeEmployeeNames(){
        List<String> empNames = new List<String>{'Deepika', 'Vivek', 'John', 'Dev', 'Sam'};
        for(String empName : empNames){
            System.debug('Name = ' + empName);
        }
    }

    public static void forLoopListOrSetDataTypeEmployeeIdList(){
        List<Integer> empIds = new List<Integer>{10011, 12000,12222, 45900, 12344};
        for(Integer empId : empIds){
            System.debug('empId = ' + empId);

        }
    }

    public static void forLoopBreakStatement(){
        for(Integer i=1; i<=10; i++){
            if(i == 5){
                break;
            }
            System.debug('value of i = ' + i);
        }
    }

    public static void forLoopContinueStatement(){
        for(Integer i=1; i<=10; i++){
            if(i == 5){
                continue;
            }
            System.debug('value of i = ' + i);
        }
    }

    // Nested Loops: Placing a loop inside another loop is called nested loops.
    public static void nestedForLoop(){
        for(integer a = 0; a <= 3; a++){
            for(integer b=0; b <=2; b++){
                System.debug('a = ' + a + 'b = ' + b);
            }
        }
    }
} 
