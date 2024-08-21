public without sharing class OpportunityAccountHandler extends BaseOpportunityDataHandler {

    public override Opportunity handle(Opportunity opportunity) {

        if (opportunity.AccountId == null) {
            throw new OpportunityAccountHandlerException('All opportunities must have a parent account!');
        }

        return super.handle(opportunity);
    }

    public class OpportunityAccountHandlerException extends Exception {}
}