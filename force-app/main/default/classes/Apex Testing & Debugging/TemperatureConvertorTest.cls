@isTest 
public with sharing class TemperatureConvertorTest {
    @isTest 
    public static void testWarmTemp() {
        Decimal celsius = TemperatureConvertor.FahrenheitToCelsius(70); 
        System.assertEquals(21.11, celsius); 
    }
}