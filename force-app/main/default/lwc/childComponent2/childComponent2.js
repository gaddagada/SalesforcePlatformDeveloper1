import { LightningElement } from 'lwc';

export default class ChildComponent2 extends LightningElement {
    handleChange(event){
        // storing the value user entered in the input box is name const variable
        const name = event.target.value;
        // Create custom event by passing name of the event and then whatever data you want to pass. 
        // storing that is selectEvent variable 
        const selectEvent = new CustomEvent('mycustomevent', {detail:name}); 

        //dispatch the event 
        this.dispatchEvent(selectEvent); 
    }
}