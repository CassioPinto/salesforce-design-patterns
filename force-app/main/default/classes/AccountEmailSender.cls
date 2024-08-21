public without sharing class AccountEmailSender extends EmailSender {

    public AccountEmailSender(SObject record) {
        super(record);
    }

    protected override Messaging.SingleEmailMessage buildEmail() {

        List<Contact> contacts = [SELECT Id, Email FROM Contact WHERE AccountId = :this.record.Id];
        List<String> toAddresses = new List<String>();
        for (Contact contact : contacts) {
            toAddresses.add(contact.Email);
        }

        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.setToAddresses(toAddresses);
        message.setSubject('Subject');
        message.setPlainTextBody('Body');

        return message;
    }
}