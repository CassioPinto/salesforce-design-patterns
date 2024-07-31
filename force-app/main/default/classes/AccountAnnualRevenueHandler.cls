public without sharing class AccountAnnualRevenueHandler extends BaseAccountDataHandler
{
    public override Account handle(Account account)
    {
        if (account.AnnualRevenue > 100000)
        {
            account.Rating = 'Hot';
        }
        else if (account.AnnualRevenue > 50000)
        {
            account.Rating = 'Warm';
        }
        else
        {
            account.Rating = 'Cold';
        }

        return super.handle(account);
    }
}