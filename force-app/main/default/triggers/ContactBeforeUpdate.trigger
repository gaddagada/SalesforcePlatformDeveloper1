trigger ContactBeforeUpdate on Contact (before update) {
    for(Contact c: Trigger.new){
        c.Description = 'Contact updated successfully by ' + userInfo.getUserName(); 
    }
}