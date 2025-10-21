public with sharing class DateTimeDateTimeDataTypes {

    public static void Date(){

        /*
            Date Datetime and Tinme class methods in Apex  
            Standard methods used frequently as a Salesforce Developer 
        */
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

        //DateTime API in Apex 
        Datetime myDateTime1 = Datetime.newInstance(2019, 2, 12,8, 10, 00); 
        System.debug('myDateTime1 =' +  myDateTime1); 

        Datetime myDateTime2 = myDateTime1.addHours(2); 
        System.debug('myDateTime2 =' +  myDateTime2); 

        Datetime myDateTime3 = myDateTime1.addDays(4);
        System.debug('myDateTime3 =' +  myDateTime3); 

        DateTime myDateTime4 = myDateTime1.addMonths(5);
        System.debug('myDateTime4 =' +  myDateTime4); 

        DateTime myDateTime5 = myDateTime1.addYears(2);
        System.debug('myDateTime5 =' +  myDateTime5); 

        Date myDate1 = myDateTime1.date();
        System.debug('Date is ' + myDate1);

        Datetime newDateTime1 = Datetime.instance(2019, 4, 14, 5, 10, 15); 
        System.debug('newDateTime1' + newDateTime1);
        String formattedDateTime = newDateTime1.format();
        System.debug('formattedDateTime' + formattedDateTime);


    /* 
        Additional methods in DateTime Apex Documentation  
    */ 


    // Datetime Class - Arithmetic Methods 
    // Add 10 days to today' date to calculate the due date for a task reminder 
    Date dueDate  = Date.today().addDays(10);
    System.debug('Due Date for Task Reminder is ' + dueDate);

    // Add 2 hours to support case opened time to set an SLA response target 
    Datetime caseOpenedTime = Datetime.now(); 
    Datetime slaResponseTarget = caseOpenedTime.addHours(2); 
    System.debug('SLA Response Target Time is ' + slaResponseTarget);

    // Sdchedule a follow-up nitification 15 minutes after a lead is created
    Datetime leadCreationTime = Datetime.now(); 
    Datetime followUpNotificationTime = leadCreationTime.addMinutes(15);
    System.debug('Follow-Up Notification Time is ' + followUpNotificationTime);
    
    // Extend a subscription by 3 months from the current renewal date.
    Datetime currentRenewalDate = Datetime.now(); 
    Datetime extendedRenewalDate = currentRenewalDate.addMonths(3);
    System.debug('Extended Renewal Date is ' + extendedRenewalDate);
    
    // Set a security token expiry time exactly 60 seconds from issuance 
    Datetime tokenIssuanceTime = Datetime.now();
    Datetime tokenExpiryiTime = tokenIssuanceTime.addSeconds(60); 
    System.debug('Token Expiry Time is ' + tokenExpiryiTime); 

    // Auto-renew a membership for 1 year from its current expiration date.
    Datetime currentExpirationDate = Datetime.now(); 
    Datetime newExpirationDate = currentExpirationDate.addYears(1);
    System.debug('New Expiration Date is ' + newExpirationDate);

    
    //Datetime Class - Extraction Methods 
    // Extract only the date portion from a datetime to compare against holidays or working days 
    Datetime eventDateTime = Datetime.newInstance(2023, 12, 25, 10, 0, 0); 
    Date eventDate = eventDateTime.date(); 
    System.debug('Event Date is ' + eventDate);


    // Use the GMT date component for a global report timestemp comparison 
    DateTime myDateTime = DateTime.newInstance(2006, 3, 16, 23, 0, 0);
    DateTime globalReportTimestamp = myDateTime.dateGMT(); 
    System.debug('Global Report Timestamp Date is ' + globalReportTimestamp);

    //Display the day of the month when an opportunity was created 
    DateTime opportunityCreatedDateTime = DateTime.newInstance(2023, 5, 10, 14, 30, 0);    
    Integer dayOfMonth = opportunityCreatedDateTime.day();
    System.debug('Opportunity Created Day of Month is ' + dayOfMonth);

    // Use GMT day value for backend audit logging.
    DateTime auditLogDateTime = DateTime.newInstance(2024, 1, 15, 9, 45, 0); 
    Integer gmtDay = auditLogDateTime.dayGMT(); 
    System.debug('GMT Day for Audit Logging is ' + gmtDay);

    // Calculate which day of the year a campaign was launched (e.g., day 256 of 2025)
    DateTime yearCampaignWasLaunched = DateTime.newInstance(2025, 10,21, 15,10,15); 
    Integer dayOfYearCampaignLaunched = yearCampaignWasLaunched.dayOfYear(); 
    System.debug('Day of Year Campaign Launched is ' + dayOfYearCampaignLaunched);

    // Get the GMT day of the year for a system maintenance window
    DateTime systemMaintenanceWindow = DateTime.newInstance(2024, 6, 30, 22, 0, 0); 
    Integer gmtDayOfYear = systemMaintenanceWindow.dayOfYearGMT(); 
    System.debug('GMT Day of Year for Maintenance Window is ' + gmtDayOfYear);          

    // Generate a GMT-based day-of-year report for compliance audits.
    DateTime complianceAuditDateTime = DateTime.newInstance(2023, 11, 5, 12, 0, 0); 
    Integer gmtDayOfYearForAudit = complianceAuditDateTime.dayOfYearGMT(); 
    System.debug('GMT Day of Year for Compliance Audit is ' + gmtDayOfYearForAudit);
    /*  
        Additional methods in Timee Apex Documentation  
    */ 

        
    }
}