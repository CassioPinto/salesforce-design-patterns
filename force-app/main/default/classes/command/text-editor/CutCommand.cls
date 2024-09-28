public without sharing class CutCommand implements KeyboardCommand {

    TextArea textArea;

    public CutCommand(TextArea textArea) {
        this.textArea = textArea;
    }

    public void execute() {
        this.textArea.cut();
    }

    public void undo() {
        this.textArea.undoCut();
    }
}