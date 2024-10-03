Opportunity opp = new Opportunity(
    Amount = 250
);

DiscountController controller = new DiscountController(
    new SummerDiscount(opp)
);

Decimal discountedAmount = controller.getDiscountedOpportunity().Amount;

System.debug('Discounted amount: ' + discountedAmount);