import { LightningElement, track } from 'lwc';
// Importing Apex method from ContactManager Apex class
import getAllContacts from '@salesforce/apex/ContactManager.getContact'

export default class FetchRecordsViaApex2 extends LightningElement {
    // Reactive property to hold the number of contacts to fetch
    @track numberOfRecords;

    // Reactive property to store the list of contacts returned from Apex
    @track contacts;

    /**
     * Getter to check if the response has been received:
     * - Returns true if contacts are fetched and available
     * - Useful for conditional rendering in the HTML template
     */
    get responseReceived() {
        return !!this.contacts;  // shorthand for: if (this.contacts) return true; else return false;
    }

    /**
     * Handler for input change:
     * - Updates numberOfRecords based on user input from the UI
     */
    numberOfContactChangeHandler(event) {
        this.numberOfRecords = event.target.value;
    }

    /**
     * Method to call the Apex controller and retrieve contacts:
     * - Passes the numberOfRecords to the Apex method
     * - Stores the response in the contacts property
     * - Catches and logs any errors that occur during the call
     */
    getContacts() {
        getAllContacts({ numberOfRecords: this.numberOfRecords })
            .then(response => {
                this.contacts = response;
            })
            .catch(error => {
                console.log('Error in retrieving contact records', error.body.message);
            });
    }
}