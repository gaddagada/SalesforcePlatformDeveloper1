public virtual class BaseModelCar{
    double price, tax, insurance; 
    public BaseModelCar(double price, double tax, double insurance){
        this.price = price;
        this.tax = tax;
        this.insurance = insurance;        
    }
    public virtual void features(){
        System.debug('Base Modal Features');
    }

    public void totalPrice(){
        System.debug('Total Price is ' + (price + tax + insurance));
    }

    public virtual void safetyFeatures(){
        System.debug('Safety Features');
    }
}