public without sharing class TurnOffCommand implements TVCommand {

    SmartTV tv;

    public TurnOffCommand(SmartTV tv) {
        this.tv = tv;
    }

    public void execute() {
        this.tv.turnOff();
    }
}