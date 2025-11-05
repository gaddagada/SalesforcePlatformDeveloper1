public abstract class BaseModelCarAbstract {
    double price, tax, insurance; 
    public abstract void features(); 
    public void totalPrice(){
        System.debug('Total Price is ' + (price + tax + insurance));
    }
}