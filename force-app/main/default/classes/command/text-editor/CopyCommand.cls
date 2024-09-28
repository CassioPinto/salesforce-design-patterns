public without sharing class CopyCommand implements KeyboardCommand {

    TextArea textArea;

    public CopyCommand(TextArea textArea) {
        this.textArea = textArea;
    }

    public void execute() {
        this.textArea.copy();
    }

    public void undo() {
        this.textArea.undoCopy();
    }
}