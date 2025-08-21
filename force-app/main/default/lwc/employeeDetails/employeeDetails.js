import { LightningElement } from 'lwc';

export default class EmployeeDetails extends LightningElement {
    empDetails=[
        {
            empName:'Steve', empAddress:'NC'
        },
        {
            empName:'Smith', empAddress:'TX'
        },  {
            empName:'Rodger', empAddress:'LA'
        },  {
            empName:'John', empAddress:'SC'
        },  {
            empName:'Raymond', empAddress:'Washington, DC'
        }
    ]
}