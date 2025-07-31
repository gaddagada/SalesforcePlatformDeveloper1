public with sharing class StaticAndNonStaticMethodExample {
    public void method1() {
        System.debug('I am a non-static method. You need to create the object of the class first to call me');
    }
    public void method2() {
        System.debug('I am a static method. You DO NOT need to create the object of the class. You can call me directly with class name');
    }
}