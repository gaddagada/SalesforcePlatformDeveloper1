public with sharing class Strings {
    public static void StringMethods() {
        String s = 'deepika khanna'; 

        // IndexOf()
        Integer inn = s.indexOf('nn');
        System.debug('inn= ' + inn);
        System.debug('index of p '+ s.indexOf('p'));// 3
        System.debug('index of x '+ s.indexOf('x'));// -1

        // Capitalize()
        String s2 = s.capitalize(); 
        System.debug('s2 ' + s2);

        // CompareTo()
        String s3 = 'abcde'; 
        String s4 = 'fghij'; 
        Integer result = s3.compareTo(s4); 
        System.debug('result'+ result); // negative value 
        Integer result2= s4.compareTo(s3); 
        System.debug('result2' + result2); // positive value 
        String s5 = 'fghij'; 
        Integer result3 = s4.compareTo(s5); 
        System.debug('result3 = ' + result3);

        // Equals()
        String s7 = 'mytutorialrack'; 
        String s6 = 'mytutorial'; 
        Boolean result4 = s7.equals(s6); 
        System.debug('is s7 == s6 ? ' + result4); //false 

        //equalsIgnoreCase()
        Boolean result5 = s7.equalsIgnoreCase(s6);
        System.debug('is s6 == s7 ignore case' + result5); // true 

        //toUpperCase()
        String s8 = 'deepika'; 
        System.debug('s8 in uppercase = ' + s8.toUpperCase()); // DEEPIKA

        //toLowerCase()
        String s9 = 'HELLO HOW ARE YOU?'; 
        System.debug('s9 in lowercase  = '+ s9.toLowerCase()); // hello how are you? 

        String name1= 'Deepika'; 
        String name2 = 'Khanna'; 
        System.debug('concatenating two string' + (name1 + name2));
        String name3 = name1+name2;
        System.debug('name3 ' + name3);

        // contains() 
        String nameContains1 = 'deepika'; 
        System.debug('using contains method '+ nameContains1.contains('ika'));
        String nameContains2 = 'hello'; 
        Boolean result1 = nameContains1.contains(nameContains2);
        String nameContains3= 'dee'; 
        Boolean resultContains2 = name1.contains(nameContains3); 
        System.debug('name1.contains(name2) = ' + result1);//false
        System.debug('name1.contains(name3) = ' + result2);// true

    }
    
}