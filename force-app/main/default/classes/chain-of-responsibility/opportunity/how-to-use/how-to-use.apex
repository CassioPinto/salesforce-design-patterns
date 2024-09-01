Opportunity opportunity = new Opportunity(
    Name = 'New opportunity',
    StageName = 'Prospecting',
    CloseDate = Date.today(),
    AccountId = '0014x00001Npl4XAAR'
);

insert opportunity; 

OpportunityAccountHandler opportunityAccountHandler = new OpportunityAccountHandler();
opportunityAccountHandler
    .setNextHandler(new OpportunityNameHandler());

Opportunity updatedOpportunity = opportunityAccountHandler.handle(opportunity);

System.debug(updatedOpportunity);