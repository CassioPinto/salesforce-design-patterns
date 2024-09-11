public without sharing class Espresso implements ICoffee {

    String description;
    Decimal cost;

    public Espresso() {
        this.description = 'Espresso';
        this.cost = 2.00;
    }

    public String getDescription() {
        return this.description;
    }

    public Decimal getCost() {
        return this.cost;
    }
}