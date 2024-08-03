public without sharing virtual class BaseOpportunityDataHandler {

    BaseOpportunityDataHandler nextHandler;

    public BaseOpportunityDataHandler setNextHandler(BaseOpportunityDataHandler handler) {
        this.nextHandler = handler;
        return handler;
    }

    public virtual Opportunity handle(Opportunity opportunity) {

        if (this.nextHandler != null) {
            return this.nextHandler.handle(opportunity);
        }
        
        return opportunity;
    }
}