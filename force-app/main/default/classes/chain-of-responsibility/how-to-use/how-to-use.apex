// Uses BaseAccountDataHandler as base class

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

// Uses BaseOpportunityDataHandler as base class

Account account = new Account(
    Name = ' New account ',
    AnnualRevenue = 60000,
    NumberOfEmployees = 20000
);

AccountAnnualRevenueHandler accountAnnualRevenueHandler = new AccountAnnualRevenueHandler();
accountAnnualRevenueHandler
    .setNextHandler(new AccountNameHandler())
    .setNextHandler(new AccountNumberOfEmployeesHandler());

Account updatedAccount = accountAnnualRevenueHandler.handle(account);

System.debug(updatedAccount);