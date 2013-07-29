Given /^I have created a locker with name "([^"]*)" and address "([^"]*)"$/ do |name, address|
  @owner = Owner.new(name, address)
end

Then /^the owner should be created$/ do
  @owner.should_not eq nil
end

Then /^the address should be "([^"]*)"$/ do |address|
  @owner.address.should eq address
end

Then /^the name should be "([^"]*)"$/ do |name|
  @owner.name.should eq name
end