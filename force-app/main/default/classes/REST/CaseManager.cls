@RestResource(urlMapping='/Cases/*')
global with sharing class CaseManager {
    @HttpGet
    global static Case getCaseById(){
        RestRequest request=RestContext.request;
       String caseId= request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
       Case result= [Select CaseNumber,Subject,Status,Origin,Priority From Case where Id=:caseId];
        return result;
    }
}