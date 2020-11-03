import { Given,When,Then} from 'cucumber';
import homePage from '../pageobjects/home.page';

Given(/^I am on the home Page$/,()=>{
        browser.url('/')
        homePage.open();
        homePage.navigateToHomePage().should.be.true;
    }
);

When(/^I navigate to ([^"]*) tab$/,(tab)=>{
    homePage.navigateToTab(tab);
  }
);

Then(/^The Title of the page is "([^"]*)"$/,(title)=>{
    browser.getTitle().should.equal(title);
  }
);

Then(/^the logo is visible$/,()=>{

  homePage.logoisDisplayed().should.be.true;
}
);

Then(/^I am in Home Page$/,()=>{
  homePage.navigateToHomePage().should.be.true;
}
);

Then(/^the following text should be visible "([^"]*)"$/,(text)=>{
  homePage.getPageText().includes(text).should.be.true;
}
);

Then(/^I should get an Active Status$/,()=>{
  homePage.activeStatus().should.be.true;
}
);


Then(/^I type a ([^"]*) in the input field$/,(text)=>{
  homePage.setTextInInput(text);
});

Then(/^I get the following result ([^"]*)$/,(text)=>{
  homePage.getPageText().includes(text).should.be.true;
});


Then(/^I get navigated to the Form Page$/,()=>{
  homePage.getPageText().includes("Simple Form Submission").should.be.true;
});