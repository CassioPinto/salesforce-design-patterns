public without sharing class withMilk extends AbsCoffeeDecorator {

    public withMilk(ICoffee coffee) {
        super(coffee);
    }

    public String getDescription() {
        return coffee.getDescription() + ', Milk';
    }

    public Decimal getCost() {
        return coffee.getCost() + 0.50;
    }
}