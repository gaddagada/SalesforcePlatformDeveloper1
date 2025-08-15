import { LightningElement, track } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi'; 

export default class CreateContactLDS extends LightningElement {

    //Define properties
    @track contactName; 
    @track contactPhone; 
    @track contactEmail; 


    /** 
     * Create Contact Name Handler
     */
    contactNameChangeHandler(event){
        this.contactName=event.target.value;
    }
    /** 
     * Create Contact Phone Handler
     */
    contactPhoneChangeHandler(event){
        this.contactPhone=event.target.value;
    }

    /** 
     * Create Contact Email Handler
     */
    contactEmailChangeHandler(event){
        this.contactEmail = event.target.value;
    }

    createContact(){
        // We are mapping the fields of what's been entered by the ened user to the API names.
        const fields = {'lastName':this.contactName, 'Phone':this.contactPhone,'Email':this.contactEmail};
        //created this variable record and put it in the variable. We are setting up the API name for the object of which the record we are creating and sending in 
        // the fields
        const recordInput={apiName:'Contact', fields};
        // We are calling this create record and passing in our record input. If the response came successfully we are displaying a messgae on the log and in 
        // the case of an error we are displaying the error on the log.  
        // this is how you create a record using lightning data service. 
        createRecord(recordInput).then(response=>{
            console.log('Contact has been created successfully ', response.id); 
        }).catch(error=>{
            console.log('Error in creating contact', error.body.message);
        })
    }
}