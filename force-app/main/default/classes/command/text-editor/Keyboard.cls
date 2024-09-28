public without sharing class Keyboard {

    Map<String, KeyboardCommand> commandById = new Map<String, KeyboardCommand>();
    List<String> history = new List<String>();

    String lastCommand;

    public void setCommand(String id, KeyboardCommand command) {
        this.commandById.put(id, command);
    }

    public void executeCommand(String id) {
        this.commandById.get(id).execute();
        this.lastCommand = id;
        this.history.add(id);
    }

    public void undoCommand() {

        if (this.lastCommand == null) { return; }

        this.commandById.get(this.lastCommand).undo();

        if (this.history.size() > 0) {
            this.history.remove(this.history.size() - 1);

            if (this.history.size() == 0) {
                this.lastCommand = null;
                return;
            }

            this.lastCommand = this.history.get(this.history.size() - 1);
        }
    }

    public void getHistory() {
        System.debug('History: ' + this.history);
    }
}