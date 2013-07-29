Given /^I have created an owner with name "([^"]*)" and address "([^"]*)"$/ do |name, address|
  @owner = Owner.new(name, address)
end

Then /^I create a daily locker with the same owner$/ do
  @daily_locker = DailyLocker.new(@owner)
end

Then /^the daily locker should be created$/ do
  @daily_locker.should_not eq nil
end

Then /^the expiry date should be today$/ do
  @daily_locker.expiry_date.should eq Date.today
end

Then /^I should see an error when trying to set expiry date$/ do
  begin
   @daily_locker.expiry_date = Date.today + 1
   false.should eq true # should never reach here
  rescue NoMethodError    
  end
end