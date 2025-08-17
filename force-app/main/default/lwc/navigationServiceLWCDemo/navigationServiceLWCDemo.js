import { LightningElement, api } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
export default class NavigationServiceLWCDemo extends LightningElement {
    @api recordId; 
    navigateToNewRecordPage(){
        this[NavigationMixin.Navigatae]({
            type:'standard__recordPage', 
            attributes:{
                "recordId":this.recordId, 
                "objectApiName":"Account", 
                "actionName":"new"
            }
        })
    }
    navigateToEditRecordPage(){
        this[NavigationMixin.Navigatae]({
            type:'standard__recordPage', 
            attributes:{
                "recordId":this.recordId, 
                "objectApiName":"Account", 
                "actionName":"edit"
            }
        })
    }
    navigateToViewRecordPage(){
        this[NavigationMixin.Navigatae]({
            type:'standard__recordPage', 
            attributes:{
                "recordId":this.recordId, 
                "objectApiName":"Account", 
                "actionName":"view"
            }
        })
    }
}