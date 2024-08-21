public without sharing class OpportunityEmailSender extends EmailSender {

    public OpportunityEmailSender(SObject record) {
        super(record);
    }

    protected override Messaging.SingleEmailMessage buildEmail() {

        OpportunityContactRole opportunityContactRole = [
            SELECT Id, Opportunity.Name, Opportunity.Amount, Contact.Email 
            FROM OpportunityContactRole 
            WHERE OpportunityId = :this.record.Id
        ];

        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.setToAddresses(new List<String>{ opportunityContactRole.Contact.Email });
        message.setSubject(opportunityContactRole.Opportunity.Name);
        message.setPlainTextBody('Amount: ' + opportunityContactRole.Opportunity.Amount);

        return message;
    }
}