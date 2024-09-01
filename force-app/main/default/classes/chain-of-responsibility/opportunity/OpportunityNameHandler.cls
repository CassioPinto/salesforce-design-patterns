public without sharing class OpportunityNameHandler extends BaseOpportunityDataHandler {

    public override Opportunity handle(Opportunity opportunity) {

        opportunity = [
            SELECT Id, Name, Account.Name
            FROM Opportunity
            WHERE Id = :opportunity.Id
        ];

        opportunity.name = opportunity.Account.Name + ' - ' + opportunity.Name;

        return super.handle(opportunity);
    }
}