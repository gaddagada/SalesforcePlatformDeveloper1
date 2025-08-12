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
    @isTest 
    public static void testBoilingPoint(){
        Decimal celsius = TemperatureConvertor.FahrenheitToCelsius(212); 
        System.assertEquals(0, celsius, 'Boiling point temperature is not expected');
    }
    @isTest 
    public static void testNegativeTemp(){
        Decimal celsius = TemperatureConvertor.FahrenheitToCelsius(-10); 
        System.assertEquals(-23.33, celsius);
    }
}