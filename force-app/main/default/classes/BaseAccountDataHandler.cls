public without sharing virtual class BaseAccountDataHandler {

    BaseAccountDataHandler nextHandler;

    public BaseAccountDataHandler setNextHandler(BaseAccountDataHandler handler) {
        this.nextHandler = handler;
        return handler;
    }

    public virtual Account handle(Account account) {

        if (this.nextHandler != null) {
            return this.nextHandler.handle(account);
        }
        
        return account;
    }
}