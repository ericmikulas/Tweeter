Then /^I should be redirected to the (.+?) page$/ do |page_name|
#  request.headers['HTTP_REFERER'].should not_be_nil
#  request.headers['HTTP_REFERER'].should contain == page_name

  page.has_content?(page_name)
  current_path[page_name].should ==page_name
  #current_path[page_name].should == page_name

 # Then "I should be on the #{page_name} page"
end

Then /^I should be on the (.+?) page$/ do |page_name|
  current_path[page_name].should == page_name
end

Then /^I should see a (.+?) link$/ do |link_name|
  has_content?(link_name)
end

Then /^I create a login with username (.+?)$/ do |login|
  fill_in 'user_username', :with => login
  fill_in 'user_email', :with=>'emikulas@apangea.com'
  fill_in 'user_firstname', :with =>'eric'
  fill_in 'user_lastname', :with => 'mikulas'
  fill_in 'user_description', :with=>'this is test 1'
  fill_in 'user_password', :with=>'password'
  fill_in 'user_password_confirmation', :with=>'password'
  click_on 'Sign up'
end
Then /^I will login as (.+?)$/ do |login|

  #User.new(:email => login, :password => 'password'', :password_confirmation => password).save!
  fill_in 'user_login', :with =>login
  fill_in 'user_password', :with=> 'password'
  check "Remember me"
  click_on 'Sign in'
end

Then "I will be logged in" do
  assert page.has_content?('Hello ')
end

Then /^I create a new Tweet saying (.+?)$/ do |tweet|
  fill_in 'tweet_text', :with => tweet
  click_on 'Create Tweet'
end
#Then  "show me where i am" do
# save_and_open_page
#end


Given "I am an unauthenticated user" do
  visit('/users/sign_out') #endsure you are logged out
end
Given "I am on the home page" do
  visit(tweets_path)
end
Given "show me where i am" do
 save_and_open_page
end


When "trying to create a tweet" do
  visit ('tweets/new')
end

When /^I try to (.+?) a user$/ do |link_name|
 # click_link(link_name)

     link=find_link(link_name)
     link.native.send_keys([:return])
end

When /^I click (.+?)$/ do |link_name|
    click_link (link_name)
   #  link=find_link(link_name)
   #  link.native.send_keys([:return])
end

When /^I find (.+?)$/ do |text|
  page.has_content?(text)
end


