import { LightningElement, track, wire } from 'lwc';
import { createRecord, getRecord } from 'lightning/uiRecordApi'; 

// Array specifying which fields to fetch from the Contact object
const fieldArray = ['Contact.LastName', 'Contact.Phone', 'Contact.Email'];

export default class CreateContactLDS2 extends LightningElement {
    // Reactive properties to hold form input values
    @track contactName; 
    @track contactPhone; 
    @track contactEmail;

    // Reactive recordId, which will be updated after creating a new Contact
    @track recordId; 

    /**
     * Wire service using getRecord:
     * - Automatically fetches the contact record whenever recordId changes
     * - Retrieves only the fields specified in fieldArray
     * - The result is stored in the contactRecord property
     */
    @wire(getRecord, { recordId: '$recordId', fields: fieldArray }) contactRecord;
    
    // Handlers to update reactive properties as user inputs values
    contactNameChangeHandler(event) {
        this.contactName = event.target.value; 
    }

    contactPhoneChangeHandler(event) {
        this.contactPhone = event.target.value; 
    }

    contactEmailChangeHandler(event) {
        this.contactEmail = event.target.value; 
    }

    /**
     * Method to create a new Contact record:
     * - Constructs a recordInput with field values entered by the user
     * - Calls createRecord API
     * - On success, sets the new contact's ID to recordId, which triggers the wire to fetch and re-render
     */
    createContact() {
        const fields = {
            'LastName': this.contactName,
            'Phone': this.contactPhone,
            'Email': this.contactEmail
        }; 
        const recordInput = { apiName: 'Contact', fields }; 

        createRecord(recordInput)
            .then(response => {
                console.log('Contact has been created: ' + response.id); 
                this.recordId = response.id;  // Triggers wire and re-render
            })
            .catch(error => {
                console.error('Error in creating contact ', error.body.message);
            });
    }

    /**
     * Getter method to retrieve and return Contact's LastName:
     * - Called during rendering
     * - Checks if contactRecord has data, then returns LastName
     */
    get retContactName() {
        if (this.contactRecord.data) {
            return this.contactRecord.data.fields.LastName.value; 
        }
        return undefined; 
    }

    /**
     * Getter method to retrieve and return Contact's Phone:
     * - Checks if contactRecord has data, then returns Phone
     */
    get retContactPhone() {
        if (this.contactRecord.data) {
            return this.contactRecord.data.fields.Phone.value;
        }
        return undefined;
    }

    /**
     * Getter method to retrieve and return Contact's Email:
     * - Checks if contactRecord has data, then returns Email
     */
    get retContactEmail() {
        if (this.contactRecord.data) {
            return this.contactRecord.data.fields.Email.value;
        }
        return undefined;
    }
}