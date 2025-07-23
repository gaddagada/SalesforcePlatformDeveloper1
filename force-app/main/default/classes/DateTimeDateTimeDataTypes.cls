public with sharing class DateTimeDateTimeDataTypes {

    public static void Date(){

        //Date API in Apex 
        Date newDate = Date.newInstance(2019, 7, 14);
        System.debug('Date is ' + newDate); // july 14, 2019

        Date todayDate = Date.today(); 
        System.debug('today date is ' + todayDate); // july 23,2025
        
        Date newDate1 = todayDate.addYears(2); 
        System.debug('newDate is 1 '+ newDate1); // july 23, 2027

        Date newDate2 = todayDate.addMonths(4); 
        System.debug('newDate is '+ newDate2); // november 23, 2025

        Date date1 = Date.newInstance(2019, 1, 1); 
        Date date2 = Date.newInstance(2019, 1, 31); 
        System.debug('date1 is = ' + date1);
        System.debug('date2 is = ' + date2);

        Integer daysBetween = date1.daysBetween(date2); 
        System.debug('days between ' +daysBetween); 

        Date newAddDaysToDate = todayDate.addDays(4);  
        System.debug('new date is ' + newAddDaysToDate);

        Date dt1 = Date.newInstance(2020, 4, 21); 
        System.debug('Date is dt1= ' + dt1);
        System.debug('Month is ' + dt1.month());
        System.debug('Year is '+ dt1.year());
        Boolean isLeapYear = Date.isLeapYear(dt1.year()); 
        System.debug('is 2020 a leap year ' + isLeapYear);

        //Time API in Apex 
        Time myTime = Time.newInstance(6, 12, 4, 40); 
        System.debug('Time is ' + myTime);
        Time myTime2 = myTime.addHours(4); 
        System.debug('new time after adding 4 hours ' + myTime2); 
        Time myTime3 = myTime.addMinutes(20); 
        System.debug('new time after adding 20 minutes ' + myTime3); 
        Time myTime4 = myTime.addMilliseconds(30); 
        System.debug('new time after adding 30 milliseconds ' + myTime4); 

        
    }
}