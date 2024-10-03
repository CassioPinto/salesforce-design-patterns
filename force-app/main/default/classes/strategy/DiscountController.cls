public without sharing class DiscountController {

    DiscountStrategy strategy;

    public DiscountController(DiscountStrategy discountStrategy) {
        this.strategy = discountStrategy;
    }

    public Opportunity getDiscountedOpportunity() {
        this.strategy.calculateDiscount();
        return this.strategy.getOpportunity();
    }
}