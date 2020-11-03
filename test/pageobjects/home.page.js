import page from './Page'

class HomePage extends page{

    get accountMessage () { return $('.ui-test'); }
    get logo () { return $('#dh_logo'); }
    get active () { return $('.active'); }
    get input () { return $('#hello-input'); }
    get inputButton () { return $('#hello-submit'); }

    open() {
        super.open()
        browser.pause(1000);
    }

    navigateToHomePage() {
        return this.accountMessage.isExisting();
    }

    navigateToTab(tab){
        const tabLink = $('='+tab);
        return tabLink.click();
    }

    logoisDisplayed(){
        return this.logo.isExisting();
    }

    activeStatus(){
        return this.active.isExisting();
    }

    setTextInInput(text){
        this.input.setValue(text)
        this.inputButton.click()
    }



}
export default new HomePage();


