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