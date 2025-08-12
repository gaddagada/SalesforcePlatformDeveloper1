@isTest 
public with sharing class TaskUtilityTest {
    public static void testGetTaskPriority() {
        String priority = TaskUtility.getTaskPriority('AU');
        System.assertEquals('Normal', priority); 
    }
    @isTest 
    public static void testTaskHighPriority(){
        String priority = TaskUtility.getTaskPriority('US');
        System.assertEquals('High', priority); 
    }
    @isTest 
    public static void testTaskPriorityInvalid(){
        String priority = TaskUtility.getTaskPriority('India');
        System.assertEquals(null, priority); 
    }
}