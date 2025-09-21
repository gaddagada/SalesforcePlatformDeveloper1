@RestResource(urlMapping='/Cases/*')
global with sharing class CaseManager {
    @HttpGet
    global static Case getCaseById(){
        RestRequest request=RestContext.request;
        String caseId= request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Case result= [Select CaseNumber,Subject,Status,Origin,Priority From Case where Id=:caseId];
        return result;
    }

    @HttpPost 
    global static Id createCase(String subj, String status, String ori, String pri){
        Case thisCase = new Case(Subject=subj, Status= status, Origin=ori, Priority=pri);
        insert thisCase; 
        return thisCase.Id;
    }
}