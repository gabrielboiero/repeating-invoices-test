Given(/^I'm in Xero login page$/) do
  Xero::Login.open
  expect(Xero::Login.open?).to be true
end

When(/^I enter valid username and password$/) do
  Xero::Login.complete_form('_change_with_your_user_', '_change_with_your_password_')
end

Then(/^I should be in main page for company "(.*?)"$/) do |company|
  expect(Xero::Navigation.showing_company).to be true
  expect(Xero::Navigation.get_company_name).to eql company
end

