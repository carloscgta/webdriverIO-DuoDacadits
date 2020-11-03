
export default class Page {

  get pageTextLocator () { return $('body'); }

  open () {
    browser.url('/')
  }

  getPageText(){
    return this.pageTextLocator.getText();
}
}
