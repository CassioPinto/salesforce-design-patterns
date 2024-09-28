TextArea textArea = new TextArea();

CutCommand cutCommand = new CutCommand(textArea);
CopyCommand copyCommand = new CopyCommand(textArea);
PasteCommand pasteCommand = new PasteCommand(textArea);

Keyboard keyboard = new Keyboard();
keyboard.setCommand('cut', cutCommand);
keyboard.setCommand('copy', copyCommand);
keyboard.setCommand('paste', pasteCommand);

keyboard.executeCommand('cut');
keyboard.executeCommand('copy');
keyboard.executeCommand('paste');

keyboard.getHistory();

keyboard.undoCommand();

keyboard.getHistory();

keyboard.undoCommand();

keyboard.getHistory();

keyboard.undoCommand();

keyboard.getHistory();

keyboard.undoCommand();

keyboard.getHistory();