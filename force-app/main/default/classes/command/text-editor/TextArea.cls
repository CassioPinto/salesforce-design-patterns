public without sharing class TextArea {

    public void cut() {
        System.debug('Cut');
    }

    public void undoCut() {
        System.debug('Undo cut');
    }

    public void copy() {
        System.debug('Copy');
    }

    public void undoCopy() {
        System.debug('Undo copy');
    }

    public void paste() {
        System.debug('Paste');
    }

    public void undoPaste() {
        System.debug('Undo paste');
    }
}