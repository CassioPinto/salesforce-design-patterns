public without sharing abstract class AbsCoffeeDecorator implements ICoffee {

    protected ICoffee coffee;

    public AbsCoffeeDecorator(ICoffee coffee) {
        this.coffee = coffee;
    }
}