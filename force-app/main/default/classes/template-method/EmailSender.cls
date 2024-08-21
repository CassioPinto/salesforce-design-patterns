public without sharing abstract class EmailSender {
    
    private Messaging.SingleEmailMessage emailMessage;
    protected SObject record { get; private set; }

    public EmailSender(SObject record) {
        this.record = record;
    }

    public void sendEmail() {
        this.emailMessage = buildEmail();
        hook();
        send();
    }

    private void send() {
        List<Messaging.SendEmailResult> result = Messaging.sendEmail(new List<Messaging.SingleEmailMessage> { this.emailMessage });
    }

    private virtual void hook() {}

    protected abstract Messaging.SingleEmailMessage buildEmail();
}