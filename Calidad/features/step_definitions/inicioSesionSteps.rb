Given(/^I am on the homepage$/) do
    page.driver.browser.manage.window.maximize
    visit ('http://localhost:8000/#!/')
  end

When("I click on {string} link") do |link_name|
    click_link(link_name)
    sleep(2)
end

When("I click on {string} button") do |button_name|
    click_button(button_name)
    sleep(2)
end

When("I fill the mail field with {string}") do |mail|
    fill_in('email', :with => mail)
    sleep(2)
end
  
When("I fill the password field with {string}") do |pwd|
    fill_in('pwd', :with => pwd)
    sleep(2)
end

Then("I see the {string} title") do |title|
    in_page_title = find('h1')
    if in_page_title.text != title
    	raise "System name should be " + title
    end
end
