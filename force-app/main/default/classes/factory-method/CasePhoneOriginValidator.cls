public without sharing class CasePhoneOriginValidator implements ICaseValidator {

    private final Case CASE_RECORD;

    public CasePhoneOriginValidator(Case caseRecord) {
        this.CASE_RECORD = caseRecord;
    }

    public void validate() {

        if (CASE_RECORD.SuppliedPhone == null) {
            throw new CasePhoneOriginValidatorException('Please fill in the phone');
        }
    }

    public class CasePhoneOriginValidatorException extends Exception {}
}