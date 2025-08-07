public with sharing class HandleListException extends Exception{
    public static void handleListException() {
        Integer first = null, sec = null; 
        try {
            List<Integer> li = new List<Integer>(); 
            li.add(15);
            li.add(30);
            // Attempting to access index 4 (out of bounds)
            first = li.get(0); // 15 
            sec = li.get(4); // This will throw a ListException
        } catch (ListException e) {
            System.debug('The exception has occurred: ' + e.getMessage()); 
        }
        System.debug('Element at index 0: ' + first);
    }
}