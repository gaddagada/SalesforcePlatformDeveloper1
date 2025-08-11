public with sharing class TryAndMultipleCatchBlocks {
    public static void TryAndMultipleCatchBlocks() {
        try{
            Account acc = [select Name from account limit 1]; 
            String s = acc.site; 
        }catch(DMLException e){
            System.debug('DmlException occurred ' + e.getMessage());
        }catch(SObjectException e){
            System.debug('SObjectException occurred ' + e.getMessage()); 
        }catch(Exception e){
            System.debug('Exception occurred ' + e.getMessage());
        }finally{
                System.debug('cleaning up resources in finally');
        }
    }
}