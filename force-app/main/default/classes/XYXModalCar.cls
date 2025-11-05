public class XYZModalCar extends BaseModelCar {
    public XYZModalCar(double price, double tax, double insurance){
        super(price, tax, insurance);        
    }
    
    override public void features(){
        System.debug('XYZ Model Features'); 
    }
}