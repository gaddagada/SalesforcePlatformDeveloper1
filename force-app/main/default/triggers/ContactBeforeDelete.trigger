trigger ContactBeforeDelete on Contact (before delete) {
    for(Contact c: Trigger.old){
        if(c.accountId == null){
            c.addError('Hey!! you are not authorized to delete this contact because it is not associated with any account');
        }
    }
}