Account account = new Account(
    Name = ' Cassio     Pinto ',
    AnnualRevenue = 150000,
    NumberOfEmployees = 5000
);

// AccountNameHandler accountNameHandler = new AccountNameHandler();
// accountNameHandler
//     .setNextHandler(new AccountAnnualRevenueHandler())
//     .setNextHandler(new AccountNumberOfEmployeesHandler());

// accountNameHandler.handle(account);
// System.debug(account);

new AccountNameHandler()
    .setNextHandler(new AccountAnnualRevenueHandler())
    .setNextHandler(new AccountNumberOfEmployeesHandler())
    .handle(account);

System.debug(account);