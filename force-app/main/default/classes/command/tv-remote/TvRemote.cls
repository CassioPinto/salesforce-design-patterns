public without sharing class TvRemote {

    Map<String, TVCommand> commandById = new Map<String, TVCommand>();

    List<String> history = new List<String>();

    public void addCommand(String id, TVCommand command) {
        this.commandById.put(id, command);
    }

    public void pressButton(String id) {
        this.commandById.get(id).execute();
        this.history.add(id);
    }

    public void getHistory() {
        System.debug('History: ' + this.history);
    }
}