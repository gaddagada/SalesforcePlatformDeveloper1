import { LightningElement, track } from 'lwc';

export default class ParentComponent2 extends LightningElement {
    @track msg; 
    
    constructor(){
        super(); 
        this.templatae.addEventListener('mycustomevent', this.handleCustomEvent.bind(this)); 
    }
    handleCustomEvent(event){
        // In the parent component we are calling the child component we have added this on event listener whatever is 
        // in the detail of that event store it in this property and it is a trackable property. So anytime the value 
        // changes, it is going to render the component.
        this.msg = event.detail;
    }
} 