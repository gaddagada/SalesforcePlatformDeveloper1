// Importing necessary modules from the Lightning Web Components (LWC) framework
import { LightningElement, api, track } from 'lwc';

// Defining and exporting the ProductTile component
export default class ProductTile extends LightningElement {
    // Private property to store the product object
    _product; 

    // Public getter for the product property
    @api
    get product() {
        return this._product;
    }

    // Public setter for the product property
    // Also sets additional tracked properties based on the product's data
    set product(value) {
        this._product = value; // Store the entire product object
        this.pictureURL = value.Picture_URL__c; // Extract and assign the picture URL
        this.name = value.name; // Extract and assign the product name
        this.msrp = value.MSRP__c; // Extract and assign the MSRP (Manufacturer's Suggested Retail Price)
    }

    // Tracked properties to enable reactivity in the UI when these values change
    @track pictureURL; 
    @track name; 
    @track msrp; 

    // Event handler for when the product tile is clicked
    // Dispatches a custom event with the product ID to notify the parent component
    handleClick() {
        const selectedEvent = new CustomEvent('selected', {
            detail: this.product.id // Passing the product ID as the detail
        });
        this.dispatchEvent(selectedEvent); // Dispatching the custom event
    }
}