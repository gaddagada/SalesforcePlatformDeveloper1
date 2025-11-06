public with sharing class ListException extends Exception{
    public void ListExceptionCodeExample() {
        Integer first, sec; 
        try{
            List<Integer> li = new List<Integer>(); 
            li.add(15);
            li.add(30);
            // 2 elements 
            first = li[0]; // 15 
            sec = li[1];  // 30
            sec = li[4]; // Exception
        }catch(ListException e){
            System.debug('List Exception Occurred: ' + e.getMessage());
        }
        System.debug('element of index 0: ' + first);
    }

    public void ListExceptionWithGenericException(){
        // If you don't want to handle specific exception then you can use generic Exception class 
        Integer first, sec; 
        try{
            List<Integer> li = new List<Integer>(); 
            li.add(15);
            li.add(30);
            // 2 elements 
            first = li[0]; // 15 
            sec = li[1];  // 30
            sec = li[4]; // Exception
        }catch(Exception e){
            System.debug('List Exception Occurred: ' + e.getMessage());
        }
        System.debug('element of index 0: ' + first);
    }
}