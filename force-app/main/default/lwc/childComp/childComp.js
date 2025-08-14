import { LightningElement, track, api } from 'lwc';

export default class ChildComp extends LightningElement {
    @track message; 

    @api 
    changeMesage(strString){
        this.mesage=strString.toUpperCase(); 
    }
}