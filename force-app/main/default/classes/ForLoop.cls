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
} 