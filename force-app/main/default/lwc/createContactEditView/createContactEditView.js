import { LightningElement ,track} from 'lwc';

export default class CreateContactEditView extends LightningElement {
    @track recordId;
    createContact(event)
    {
        this.recordId=event.detail.id;
    }
}