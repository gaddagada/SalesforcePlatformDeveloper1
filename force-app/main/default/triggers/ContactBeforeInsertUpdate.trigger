trigger ContactBeforeInsertUpdate on Contact (before Insert, before Update) {
    for(Contact c: Trigger.new){
        if(trigger.isInsert){
            c.Description = 'Contact created by successfully by insert trigger'; 
        }else if(trigger.isUpdate){
            c.Description = 'Contact updated successfully by else Update block ';

        }
    }
}