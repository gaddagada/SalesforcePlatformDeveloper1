public with sharing class NullPointerException extends Exception{
    public void NullPointerExceptionCodeExample() {
        String s;  
        Boolean b; 
        try{
            b = s.contains('abc');  // NullPointerException
            System.debug('s contains abc?' + b);
            System.debug('inside of the try block');

        }catch(NullPointerException npe){
            System.debug('the following exception has occured: ' + npe.getMessage());
        }
            System.debug('Outside of the try-catch block');

    }
}