// Import base LWC functionality
import { LightningElement, wire } from 'lwc';
// Import current page reference for event handling scope
import { CurrentPageReference } from 'lightning/navigation';
// Import NavigationMixin to enable programmatic navigation
import { NavigationMixin } from 'lightning/navigation';

/** Wire adapter to load records, utils to extract values. */
import { getRecord } from 'lightning/uiRecordApi';

/** Pub-sub mechanism for sibling component communication. */
import { registerListener, unregisterAllListeners } from 'c/pubsub';

// Import schema definitions for Product__c fields
/** Product__c Schema. */
import PRODUCT_OBJECT from '@salesforce/schema/Product__c';
import NAME_FIELD from '@salesforce/schema/Product__c.Name';
import LEVEL_FIELD from '@salesforce/schema/Product__c.Level__c';
import CATEGORY_FIELD from '@salesforce/schema/Product__c.Category__c';
import MATERIAL_FIELD from '@salesforce/schema/Product__c.Material__c';
import MSRP_FIELD from '@salesforce/schema/Product__c.MSRP__c';
import PICTURE_URL_FIELD from '@salesforce/schema/Product__c.Picture_URL__c';
/**
 * Record fields to load.
 * Array of fields to retrieve from the Product__c record
 */
const fields = [
    NAME_FIELD, 
    LEVEL_FIELD, 
    CATEGORY_FIELD, 
    MATERIAL_FIELD, 
    MSRP_FIELD, 
    PICTURE_URL_FIELD
];
/**
 * Component to display details of a Product__c.
 */
export default class ProductCard extends LightningElement {
    /** Id of Product__c to display.
     *  Record ID of the selected Product__c (reactive property)
     */
    recordId; 

    // Wire to get the current page reference (used in pubsub)
    @wire(CurrentPageReference) pageRef;

    /** Load the Product__c to display. */
    @wire(getRecord, {recordId: '$recordId', fields})
    product

    // Lifecycle hook called when component is inserted in DOM
    connectedCallback(){
        registerListener('productSelected', this.handleProductSelected, this);
    }
    
    // Lifecycle hook called when component is removed from DOM
    disconnectedCallback(){
        unregisterAllListeners(this); 
    }

    /** 
     * Handle for when a product is selected. When 'this.recordId' changes, the @wire
     * above will detect the change and provision new data. 
     */
    /**
     * Handler for pubsub event 'productSelected'.
     * Updates the recordId, which in turn triggers the wire to load product data.
     * @param {string} productId - ID of the selected product
     */
    handleNavigateProductSelected(productId){
        this.recordId = productId; 
    }

    /**
     * Navigate to the standard record view page for the selected product.
     * Uses NavigationMixin to initiate navigation.
     */
    handleNavigateToRecord() {
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: PRODUCT_OBJECT.objectApiName,
                actionName: 'view'
            }
        });
    }
    /**
     * Getter to determine if no product data is available and there's no error.
     * Useful for showing an empty state or loading indicator.
     */
    get noData() {
        return !this.product.error && !this.product.data;
    }
}