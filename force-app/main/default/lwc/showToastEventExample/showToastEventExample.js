import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class ShowToastEventExample extends LightningElement {

    handleSuccess(){
        const showSuccess=new ShowToastEvent({
            title: 'Success!!', 
            message: 'This is a Success Message', 
            variant:'success',
        }); 
        this.dispatchEvent(showSuccess);
    }

    handleError(){
        const showError=new ShowToastEvent({
            title: 'Error!!', 
            message: 'This is a Error Message', 
            variant:'error',
        }); 
        this.dispatchEvent(showError);
    }

    handleWarning(){
        const showWarn=new ShowToastEvent({
            title: 'Warning!!', 
            message: 'This is a Warning Message', 
            variant:'warning',
        }); 
        this.dispatchEvent(showWarn);
    }

    handleInfo(){
        const showInfo=new ShowToastEvent({
            title: 'Info!!', 
            message: 'This is a Info Message', 
            variant:'info',
        }); 
        this.dispatchEvent(showInfo);
    }
}