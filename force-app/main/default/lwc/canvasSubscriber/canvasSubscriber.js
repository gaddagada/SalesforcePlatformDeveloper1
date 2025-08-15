import { LightningElement, track, wire } from 'lwc';
import { registerListener, unregisterAllListeners} from 'c/pubsub'; 
import {currentPageReference} from 'lightning/navigation';

export default class CanvasSubscriber extends LightningElement {
    //Properties 
    @track color; 
    @wire(currentPageReference) pageRef; 
    
    connectedCallback(){
        // We are registering for the event.  Whenever the event gets fired, it will be since we are subscribed to it will receieve that event. it calls the registerListener event and takes in three parameters 
        // 1. name of the event 2. handler 3. this 
        registerListener("changedColor", this.handleChangedColor, this); 
    }
    disconnectedCallback(){
        // We will unregister for all listeners and register this from the listeners.
        unregisterAllListeners(this); 
    }
    
    handleChangedColor(){
        // This will display the color that has been selected in the publisher component
         // Whatever we pass from publisher.js file we're passing this.colo. Whatever we are passing we are storing in this.color variable. 
        console.log('Color --> ' + colorCode); 
        this.color=colorCode; 
    }

    get colorStyle(){
        // it is setting up the background of that canvas to whatever color the usedr has picked. 
        return 'background-color: ${this.color}';
    }
} 