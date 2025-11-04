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

    public static void listCollectionMethodsAddAndRemove(){
       // Adding to List collection methods  performing by adding remove one operation at a time. 
        List<String> obj = new List<String>(); 
        obj.add('Ajeet');
        obj.add('Harry');
        obj.add('Steve');
        System.debug('My friends ' + obj);
        obj.add(0, 'Rahul');
        obj.add('Justin'); 
        System.debug('New list of friends' + obj);
        obj.remove(1);
        System.debug('Final list of friends '+ obj);
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

        // display elements of my set 
        System.debug('Elements of my set ' + hSet);
    }

    // Sorting - No Sorting 
    public static void sortingColorsSortingAndNoSortingExample() {
        List<String> colors = new List<String>{'Yellow', 'Red', 'Green'};
        System.debug('My elementsd in my list are ' + colors);

        // no sort 
        System.debug('color at index 0' + colors.get(0));  // Yellow
        System.debug('color at index 0' + colors.get(1));  // Red
        System.debug('color at index 0' + colors.get(2)); // Green 

        // sort 
        colors.sort();
        System.debug('After sorting my elements in my list are ' + colors);

        System.debug('color at index 0' + colors.get(0));  // Green
        System.debug('color at index 0' + colors.get(1));  // Red
        System.debug('color at index 0' + colors.get(2)); // Yellow
    }

    // Sorting - No Sorting 
    public static void sortingNumbersSortingAndNoSortingExample() {
        List<Integer> myList = new List<Integer>{100, 34, 80, 34};
        System.debug('My list has following items ' + myList); // 100, 34, 80, 79
        // No sort
        System.debug('element at index 0:' + myList[0]); // 100 
        System.debug('element at index 1:' + myList[1]); // 34
        System.debug('element at index 2:' + myList[2]); // 80
        System.debug('element at index 3:' + myList[3]); // 79
        
        // sort 
        myList.sort();
        System.debug('After sorting my list has following items ' + myList); // 34,79,80,100
        System.debug('element at index 0:' + myList[0]); // 34 
        System.debug('element at index 1:' + myList[1]); // 79
        System.debug('element at index 2:' + myList[2]); // 80  
        System.debug('element at index 3:' + myList[3]); // 100             
    }



}