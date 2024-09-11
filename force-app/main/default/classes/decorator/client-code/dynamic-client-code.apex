ICoffee coffee = new Espresso();
List<String> decoratorTypes = new List<String>{
    'Milk',
    'Sugar'
};

for (String type : decoratorTypes) {
    if (type == 'Milk') {
        coffee = new withMilk(coffee);
    } else if (type == 'Sugar') {
        coffee = new withSugar(coffee);
    }
}

System.debug('Cost: ' + coffee.getCost());
System.debug('Description: ' + coffee.getDescription());