public with sharing class Collections {
    public static void listollectionExample() {
        //List Collection 
        List<String> studentNames = new List<String>(); 
        studentNames.add('Ravi'); 
        studentNames.add('John');
        studentNames.add('Adam');
        studentNames.add('Tina');
        studentNames.add('Adam'); 

        System.debug('Size of the list ' + studentNames.size()); 
        System.debug('Elements in the list ' + studentNames); 
    }
    // Set Collection 
    public static void setCollectionExample() {
        Set<String> studentNames = new Set<String>(); 
        studentNames.add('Ravi'); 
        studentNames.add('John');
        studentNames.add('Adam');
        studentNames.add('Tina');
        studentNames.add('Adam'); 

        System.debug('Size of the list ' + studentNames.size()); 
        System.debug('Elements in the list ' + studentNames); 
    }

    // Map Collection 
    public static void mapCollectionExample() {
        Map<Integer, String> studentNamesMap = new Map<Integer, String>();
        studentNamesMap.put(5, 'John'); 
        studentNamesMap.put(15, 'Adam'); 
        studentNamesMap.put(22, 'Tina'); 
        studentNamesMap.put(3, 'Adam');         
        studentNamesMap.put(5, 'Robbin'); 

        System.debug('Value for the key  = 15 ' + studentNamesMap.get(15));
        System.debug('Value for the key  = 155 ' + studentNamesMap.get(5));
    }

    // List collection class methods 
    public static void listCollectionMethods(){
        //Displaying multiple items added to a list at once 
        List<String> myStrings = new List<String>{'one', 'three', 'two', 'four'};
        System.debug('list has following items ' + myStrings);

        // Calculate the size of list 
        System.debug('size of my list ' + myStrings.size()); 

        myStrings.add('eleven');// add another element
        System.debug('new list has following items ' + myStrings);

        // Calculate the size of list after another element has been added
        System.debug('size of my list ' + myStrings.size()); 

        // Display one element
        System.debug('element at index 1 ' + myStrings[1]);
        System.debug('element at index 1 ' + myStrings.get(1)); 

        // Calculate the size of list 
        System.debug('size of my list ' + myStrings.size());  // 5

        myStrings.add('hello');
        myStrings.add('mytutorialrack');

        System.debug('final size of my list ' + myStrings.size()); // 7 elements 
    }

    // Example of difference between Set and List 
    public static void differenceBetweenSetAndList(){
        Set<String> hSet = new Set<String>(); 
        // add to the elements 
        hSet.add('Apple');
        hSet.add('Mango');
        hSet.add('Grapes');
        hSet.add('Orange');

        hSet.add('Fig');
        // try to duplicate
        hSet.add('Apple');
        hSet.add('Mango');
        hSet.add(null);
        hSet.add(null);
        

    }

}