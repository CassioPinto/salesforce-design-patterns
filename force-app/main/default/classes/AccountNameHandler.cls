public without sharing class AccountNameHandler extends BaseAccountDataHandler
{
    public override Account handle(Account account)
    {
        account.Name = account.Name.trim().normalizeSpace();
        return super.handle(account);
    }
}