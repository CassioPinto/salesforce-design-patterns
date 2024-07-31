public without sharing class AccountNumberOfEmployeesHandler extends BaseAccountDataHandler
{
    public override Account handle(Account account) 
    {
        if (account.NumberOfEmployees > 50000)
        {
            account.Type = 'Channel Partner / Reseller';
        }
        else if (account.NumberOfEmployees > 10000)
        {
            account.Type = 'Customer Channel';
        }
        else
        {
            account.Type = 'Prospect';
        }

        return super.handle(account);
    }
}