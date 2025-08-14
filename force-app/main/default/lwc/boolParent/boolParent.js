import { LightningElement } from 'lwc';

export default class BoolParent extends LightningElement {
    constructor()
    {
        super();
        console.log('constuctor on the parent is called');
    
    }
    connectedCallback()
    {
        console.log('connected callback on the parent is called');

    }
    renderedCallback()
    {
        console.log('rendered callback on the parent is called ');

    }
    disconnectedCallback()
    {
        console.log('disconnected callback on the parent is called');
    }
}