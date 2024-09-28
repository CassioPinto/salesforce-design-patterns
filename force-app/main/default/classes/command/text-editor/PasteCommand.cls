public with sharing class PasteCommand implements KeyboardCommand {

    TextArea textArea;

    public PasteCommand(TextArea textArea) {
        this.textArea = textArea;
    }

    public void execute() {
        this.textArea.paste();
    }

    public void undo() {
        this.textArea.undoPaste();
    }
}