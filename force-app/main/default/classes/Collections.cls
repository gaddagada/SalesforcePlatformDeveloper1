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
        studentNamesMap.put(1, 'Ravi'); 
        studentNamesMap.put(5, 'John'); 
        studentNamesMap.put(15, 'Adam'); 
        studentNamesMap.put(22, 'Tina'); 
        studentNamesMap.put(3, 'Adam');         
        studentNamesMap.put(5, 'Robbin'); 

        System.debug('Value for the key  = 15 ' + studentNamesMap.get(15));
        System.debug('Value for the key  = 155 ' + studentNamesMap.get(5));
    }
}