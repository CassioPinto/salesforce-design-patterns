String queryString = new QueryBuilder()
    .selectField('Id')
    .selectField('Name')
    .fromObject('Account')
    .whereExpression('Industry = \'Energy\'')
    .setLimit(2)
    .buildQuery();

System.debug('queryString: ' + queryString);

List<Account> accounts = Database.query(queryString);

System.debug('accounts: ' + accounts);