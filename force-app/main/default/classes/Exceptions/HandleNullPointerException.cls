public with sharing class HandleNullPointerException extends Exception{
    public static void HandleNullPointerException() {
        String s; 
        boolean b;
        try{
            b = s.contains('abc'); // NullPointer
            System.debug('s.contains abc? ' + b);
            System.debug('inside of try block');
        }catch(NullPointerException npe){
            System.debug('the following exception has occurred ' + npe.getMessage());
        }
        System.debug('Outside of the try-catch block');
    }
}