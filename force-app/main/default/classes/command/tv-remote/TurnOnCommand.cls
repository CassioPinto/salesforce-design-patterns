public without sharing class TurnOnCommand implements TVCommand {

    SmartTV tv;

    public TurnOnCommand(SmartTV tv) {
        this.tv = tv;
    }

    public void execute() {
        this.tv.turnOn();
    }
}