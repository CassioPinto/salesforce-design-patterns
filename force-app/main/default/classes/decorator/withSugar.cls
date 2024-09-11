public without sharing class withSugar extends AbsCoffeeDecorator {

    public withSugar(ICoffee coffee) {
        super(coffee);
    }

    public String getDescription() {
        return coffee.getDescription() + ', Sugar';
    }

    public Decimal getCost() {
        return coffee.getCost() + 0.25;
    }
}