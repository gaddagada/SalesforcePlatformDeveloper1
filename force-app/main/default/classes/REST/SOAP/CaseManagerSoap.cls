global with sharing class CaseManagerSoap {

    // Small wrapper to pass arbitrary field updates via SOAP
    global class FieldUpdate {
        webService String field;   // API name, e.g., 'Priority'
        webService String value;   // value as string
    }

    // GET /Cases/{id}
    webService static Case getCaseById(String caseId) {
        if (String.isBlank(caseId)) {
            throw new AuraHandledException('caseId is required');
        }
        Case c = [
            SELECT Id, CaseNumber, Subject, Status, Origin, Priority
            FROM Case
            WHERE Id = :caseId
            LIMIT 1
        ];
        return c; // returning an sObject is supported in SOAP
    }

    // POST /Cases
    webService static Id createCase(String subj, String status, String ori, String pri) {
        Case c = new Case(
            Subject  = subj,
            Status   = status,
            Origin   = ori,
            Priority = pri
        );
        insert c;
        return c.Id;
    }

    // DELETE /Cases/{id}
    webService static Boolean deleteCaseById(String caseId) {
        if (String.isBlank(caseId)) {
            throw new AuraHandledException('caseId is required');
        }
        delete [SELECT Id FROM Case WHERE Id = :caseId LIMIT 1];
        return true;
    }

    // PUT /Cases (upsert by Id)
    webService static Id upsertCase(String id, String sub, String sta, String ori, String pri) {
        if (String.isBlank(id)) {
            throw new AuraHandledException('Id is required for upsert');
        }
        Case c = new Case(
            Id       = id,
            Subject  = sub,
            Status   = sta,
            Origin   = ori,
            Priority = pri
        );
        upsert c; // upsert by Id
        return c.Id;
    }

    // PATCH /Cases/{id} — update selected fields
    // SOAP can't take JSON request bodies; use FieldUpdate[] instead.
    webService static Id updateCaseFields(String caseId, FieldUpdate[] updates) {
        if (String.isBlank(caseId)) {
            throw new AuraHandledException('caseId is required');
        }
        if (updates == null || updates.isEmpty()) {
            throw new AuraHandledException('At least one field update is required');
        }

        Case c = new Case(Id = caseId);
        for (FieldUpdate u : updates) {
            if (u == null || String.isBlank(u.field)) continue;
            // Cast values to string; platform will coerce to field type where possible
            c.put(u.field, u.value);
        }
        update c;
        return c.Id;
    }
}