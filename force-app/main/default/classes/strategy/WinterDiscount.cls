public without sharing class WinterDiscount implements DiscountStrategy {

    Opportunity opportunity;

    public WinterDiscount(Opportunity opportunity) {
        this.opportunity = opportunity;
    }

    public void calculateDiscount() {

        Decimal amount = this.opportunity.Amount;

        if (amount < 100) {
            amount = amount - (amount * 0.10);
        } else if (amount < 200) {
            amount = amount - (amount * 0.20);
        } else {
            amount = amount - (amount * 0.30);
        }

        this.opportunity.Amount = amount;
    }

    public Opportunity getOpportunity() {
        return this.opportunity;
    }
}