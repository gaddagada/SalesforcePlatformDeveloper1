public with sharing class SalesforceGovernorLimits {
    public static void governorLimitsMethods() {
        System.debug('Maximum number of callouts => ' + Limits.getLimitCallouts());
        System.debug('Maximum number of records that can be processed => ' + Limits.getLimitDmlRows());
        System.debug('CPU time: => ' + Limits.getLimitCpuTime());
        System.debug('Limit Dml statements => ' + Limits.getLimitDmlStatements());
        System.debug('Future calls => ' + Limits.getLimitFutureCalls());
        System.debug('Limit Queries ' + Limits.getLimitQueries());
        System.debug('Limit SOSL Queries => ' + Limits.getLimitSoslQueries()); 
    }
}