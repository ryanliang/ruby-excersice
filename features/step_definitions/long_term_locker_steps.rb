Given /^I create a long term locker with the some owner and date "([^"]*)"$/ do |expiry_date|
  @owner = Owner.new('Joe', 'Toronto')
  @long_term_locker = LongTermLocker.new(@owner, Date.strptime(expiry_date, "%Y-%m-%d"))
end

Then /^the expiry date should be "([^"]*)"$/ do |expiry_date|
  @long_term_locker.expiry_date.should eq Date.strptime(expiry_date, "%Y-%m-%d")
end

Then /^I set a new expiry date "([^"]*)"$/ do |new_expiry_date|
  @long_term_locker.expiry_date = Date.strptime(new_expiry_date, "%Y-%m-%d")
end

Then /^the long term locker should be created$/ do
  @long_term_locker.should_not eq nil
end
