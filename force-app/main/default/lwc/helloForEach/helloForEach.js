import { LightningElement } from 'lwc';

export default class HelloForEach extends LightningElement {
    contacts=[
        {
            Id:1, 
            Name: 'Amy Taylor', 
            Title: 'VP of Engineering'
        },
        {
            Id:2, 
            Name: 'Michael Jones', 
            Title: 'VP of Sales'
        },
        {
            Id:3, 
            Name: 'Jennifer Wu', 
            Title: 'CEO'
        }, 
        {
            Id:4, 
            Name: 'Jennifer Anigston ', 
            Title: 'CP of Marketing'
        }, 
        {
            Id:5, 
            Name: 'Gayathri Addagada', 
            Title: 'CTO'
        }
    ];
}