trigger WinningStageTrigger on Opportunity (before update) {
    for(Opportunity opp: Trigger.new){
        Opportunity oldOpp = Trigger.OldMap.get(opp.Id); 
        Boolean oldOppIsWon = oldOpp.StageName.equals('Closed Won'); 
        Boolean newOppIsWon = opp.StageName.equals('Closed Won');
        if(!oldOppIsWon && newOppIsWon){
            opp.Is_Value_Correct__c = true; 
        }
    }
}