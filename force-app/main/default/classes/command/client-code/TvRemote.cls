public without sharing class TvRemote {

    TVCommand command;

    public void setCommand(TVCommand command) {
        this.command = command;
    }

    public void pressButton() {
        this.command.execute();
    }
}