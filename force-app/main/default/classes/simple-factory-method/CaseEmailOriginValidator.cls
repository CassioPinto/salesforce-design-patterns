public without sharing class CaseEmailOriginValidator implements ICaseValidator {

    private final Case CASE_RECORD;

    public CaseEmailOriginValidator(Case caseRecord) {
        this.CASE_RECORD = caseRecord;
    }

    public void validate() {

        if (CASE_RECORD.SuppliedPhone == null && CASE_RECORD.SuppliedEmail == null) {
            throw new CaseEmailOriginValidatorException('Please fill in the email');
        }
    }

    public class CaseEmailOriginValidatorException extends Exception {}
}