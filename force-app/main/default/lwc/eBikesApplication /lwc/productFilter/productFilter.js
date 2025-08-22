import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { getPicklistValues, getObjectInfo } from 'lightning/uiObjectInfoApi';
import CATEGORY_FIELD from '@salesforce/schema/Product__c.Category__c';
import LEVEL_FIELD from '@salesforce/schema/Product__c.Level__c';
import MATERIAL_FIELD from '@salesforce/schema/Product__c.Material__c';
import PRODUCT_OBJECT from '@salesforce/schema/Product__c';
import { fireEvent } from 'c/pubsub';

const DELAY = 350;

export default class ProductFilter extends LightningElement {
    searchKey = '';
    maxPrice = 10000;

    filters = {
        searchKey: '',
        maxPrice: 10000
    };

    @wire(CurrentPageReference) pageRef;

    @wire(getObjectInfo, { objectApiName: PRODUCT_OBJECT })
    objectInfo;

    @wire(getPicklistValues, {
        recordTypeId: '$objectInfo.data.defaultRecordTypeId',
        fieldApiName: CATEGORY_FIELD
    })
    categories;

    @wire(getPicklistValues, {
        recordTypeId: '$objectInfo.data.defaultRecordTypeId',
        fieldApiName: LEVEL_FIELD
    })
    levels;

    @wire(getPicklistValues, {
        recordTypeId: '$objectInfo.data.defaultRecordTypeId',
        fieldApiName: MATERIAL_FIELD
    })
    materials;

    handleSearchKeyChange(event) {
        this.filters.searchKey = event.target.value;
        this.delayedFilterChangeEvent();
    }

    handleMaxPriceChange(event) {
        this.filters.maxPrice = event.target.value;
        this.delayedFilterChangeEvent();
    }

    handleCheckboxChange(event) {
        if (!this.filters.categories) {
            this.filters.categories = this.categories?.data?.values?.map(item => item.value) || [];
            this.filters.levels = this.levels?.data?.values?.map(item => item.value) || [];
            this.filters.materials = this.materials?.data?.values?.map(item => item.value) || [];
        }

        const value = event.target.dataset.value;
        const filterKey = event.target.dataset.filter;
        const filterArray = this.filters[filterKey];

        if (event.target.checked) {
            if (!filterArray.includes(value)) {
                filterArray.push(value);
            }
        } else {
            this.filters[filterKey] = filterArray.filter(item => item !== value);
        }

        fireEvent(this.pageRef, 'filterChange', this.filters);
    }

    delayedFireFilterChangeEvent() {
        // Debouncing this method: Do not actually fire the event as long as this function is
        // being called within a delay of DELAY. This is to avoid a very large number of Apex
        // method calls in components listening to this event.
        window.clearTimeout(this.delayTimeout);
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this.delayTimeout = setTimeout(() => {
            fireEvent(this.pageRef, 'filterChange', this.filters);
        }, DELAY);
    }
}