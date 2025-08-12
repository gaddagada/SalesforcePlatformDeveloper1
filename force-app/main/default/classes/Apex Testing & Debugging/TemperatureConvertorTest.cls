@isTest 
public with sharing class TemperatureConvertorTest {
    @isTest 
    public static void testWarmTemp() {
        Decimal celsius = TemperatureConvertor.FahrenheitToCelsius(70); 
        System.assertEquals(21.11, celsius); 
    }
    @isTest 
    public static void testFreezingPoint(){
        Decimal celsius = TemperatureConvertor.FahrenheitToCelsius(32); 
        System.assertEquals(0, celsius);
    }
}