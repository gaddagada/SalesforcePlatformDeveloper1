// Importing required modules from LWC and Salesforce
import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { getPicklistValues, getObjectInfo } from 'lightning/uiObjectInfoApi';

// Importing field and object schema definitions
import CATEGORY_FIELD from '@salesforce/schema/Product__c.Category__c';
import LEVEL_FIELD from '@salesforce/schema/Product__c.Level__c';
import MATERIAL_FIELD from '@salesforce/schema/Product__c.Material__c';
import PRODUCT_OBJECT from '@salesforce/schema/Product__c';

// Importing pubsub utility to fire events between components
import { fireEvent } from 'c/pubsub';

// Constant delay time in milliseconds for debouncing user input
const DELAY = 350;

export default class ProductFilter extends LightningElement {
    // Initial filter values
    searchKey = '';
    maxPrice = 10000;

    // Filters object to track selected filter values
    filters = {
        searchKey: '',
        maxPrice: 10000
    };

    // Wire service to get a reference to the current page (used for pubsub event scope)
    @wire(CurrentPageReference) pageRef;

    // Wire service to fetch metadata about the Product__c object (e.g., record type ID)
    @wire(getObjectInfo, { objectApiName: PRODUCT_OBJECT })
    objectInfo;

    // Wire service to get picklist values for Category field based on object metadata
    @wire(getPicklistValues, {
        recordTypeId: '$objectInfo.data.defaultRecordTypeId',
        fieldApiName: CATEGORY_FIELD
    })
    categories;

    // Wire service to get picklist values for Level field
    @wire(getPicklistValues, {
        recordTypeId: '$objectInfo.data.defaultRecordTypeId',
        fieldApiName: LEVEL_FIELD
    })
    levels;

    // Wire service to get picklist values for Material field
    @wire(getPicklistValues, {
        recordTypeId: '$objectInfo.data.defaultRecordTypeId',
        fieldApiName: MATERIAL_FIELD
    })
    materials;

    // Event handler for search input changes
    handleSearchKeyChange(event) {
        this.filters.searchKey = event.target.value;
        this.delayedFilterChangeEvent(); // Debounced firing of filter change event
    }

    // Event handler for max price input changes
    handleMaxPriceChange(event) {
        this.filters.maxPrice = event.target.value;
        this.delayedFilterChangeEvent(); // Debounced firing of filter change event
    }

    // Event handler for checkbox changes (categories, levels, materials)
    handleCheckboxChange(event) {
        // If the filter arrays are not yet initialized, initialize them with all possible values
        if (!this.filters.categories) {
            this.filters.categories = this.categories?.data?.values?.map(item => item.value) || [];
            this.filters.levels = this.levels?.data?.values?.map(item => item.value) || [];
            this.filters.materials = this.materials?.data?.values?.map(item => item.value) || [];
        }

        const value = event.target.dataset.value; // Value of the checkbox
        const filterKey = event.target.dataset.filter; // Filter key (categories, levels, materials)
        const filterArray = this.filters[filterKey]; // Corresponding array of selected values

        if (event.target.checked) {
            // Add the value to the filter array if it doesn't already exist
            if (!filterArray.includes(value)) {
                filterArray.push(value);
            }
        } else {
            // Remove the value from the filter array
            this.filters[filterKey] = filterArray.filter(item => item !== value);
        }

        // Fire a filterChange event to notify other components of the updated filters
        fireEvent(this.pageRef, 'filterChange', this.filters);
    }

    // Debounced version of the event firing to reduce unnecessary updates
    delayedFilterChangeEvent() {
        // Clear any existing timeout to reset the delay window
        window.clearTimeout(this.delayTimeout);

        // Set a new timeout to fire the event after the delay
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this.delayTimeout = setTimeout(() => {
            fireEvent(this.pageRef, 'filterChange', this.filters);
        }, DELAY);
    }
}