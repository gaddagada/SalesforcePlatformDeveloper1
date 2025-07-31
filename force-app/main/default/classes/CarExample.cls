public with sharing class CarExample {
    public string make; 
    public string model; 
    public integer averageSpeed; 

    public void display(){
        System.debug('Male of the car ' + make);
        System.debug('Model of the car ' + model);
        System.debug('Average Speed ' + averageSpeed);
    }
    
}