public without sharing class CaseController {

    @AuraEnabled
    public static void validateCase(Case caseRecord) {

        CaseValidatorFactory.getService(caseRecord).validate();
    }
}