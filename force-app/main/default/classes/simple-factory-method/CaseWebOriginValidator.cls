public without sharing class CaseWebOriginValidator implements ICaseValidator {

    private final Case CASE_RECORD;

    public CaseWebOriginValidator(Case caseRecord) {
        this.CASE_RECORD = caseRecord;
    }

    public void validate() {

        if (CASE_RECORD.SuppliedPhone == null && CASE_RECORD.SuppliedEmail == null) {
            throw new CaseWebOriginValidatorException('Please fill in the phone and email');
        }
    }

    public class CaseWebOriginValidatorException extends Exception {}
}