public interface DiscountStrategy {
    void calculateDiscount();
    Opportunity getOpportunity();
}