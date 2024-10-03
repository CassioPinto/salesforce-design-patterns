public without sharing class SummerDiscount implements DiscountStrategy {

    Opportunity opportunity;

    public SummerDiscount(Opportunity opportunity) {
        this.opportunity = opportunity;
    }

    public void calculateDiscount() {

        Decimal amount = this.opportunity.Amount;

        if (amount < 100) {
            amount = amount - (amount * 0.05);
        } else if (amount < 200) {
            amount = amount - (amount * 0.15);
        } else {
            amount = amount - (amount * 0.25);
        }

        this.opportunity.Amount = amount;
    }

    public Opportunity getOpportunity() {
        return this.opportunity;
    }
}