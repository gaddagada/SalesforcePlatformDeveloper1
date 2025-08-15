import { LightningElement, track, wire} from 'lwc';
import { fireEvent } from 'c/pubsub'; 
import {currentPageReference } from 'lightning/navigation';

export default class PalettePublisher extends LightningElement {
    
    //Properties 
    @track color; 
    @wire (currentPageReference)pageRef; 

    //color code options 
    colorCodeOptions=[
        {label: "Green", value:"green"}, 
        {label: "Red", value:"red"}, 
        {label: "Yellow", value:"yellow"}, 
        {label: "Blue", value:"blue"}
    ]

    //Whenever value of combobox changes this handler gets called. 
    changeColor(event){
        // whatever value selected in the combobox, we're going to fetch that value and store it in this.color property 
        this.color = event.target.value;
    }

    handleChangeColor(){
        // log statement to see if the color that got selected was correct
        console.log("color -> " + this.color);
        // the publisher is responsible for firing the event and the fire event method takes in three parameters. 
        // 1. pageReference 2. event name 3. data or the payload
        fireEvent(this.pageRef, "changedColor", this.color);
    }
}