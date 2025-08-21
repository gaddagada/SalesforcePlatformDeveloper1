import { createElement } from '@lwc/engine-dom';
import HelloWorld2 from 'c/helloWorld2';

describe('c-hello-world2', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('displays greeting', () => {
        // Arrange
        const element = createElement('c-hello-world2', {
            is: HelloWorld2
        });

        // Act
        document.body.appendChild(element);
        const pTag = element.shadowRoot.querySelector('p'); 

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        expect(pTag.textContent).toBe('Hello, World!'); 
    });

    it('Renders with Hello Matt', ()=>{
        const element=createElement('c-hello-world2',{
            is: HelloWorld2
        });
        element.person="Matt";
        document.body.appendChild(element);
        

        const pTag=element.shadowRoot.querySelector('p');
        expect(pTag.textContent).toEqual('Hello, Matt!');
    })
});