public without sharing class CaseValidatorFactory {

    public static ICaseValidator getService(Case caseRecord) {
        switch on caseRecord.Origin {
            when 'Phone'  {
                return new CasePhoneOriginValidator(caseRecord);
            }
            when 'Email'  {
                return new CaseEmailOriginValidator(caseRecord);
            }
            when 'Web'  {
                return new CaseWebOriginValidator(caseRecord);
            }
            when else {
                return null;
            }
        }
    }
}