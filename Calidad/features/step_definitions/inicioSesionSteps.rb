Given(/^I am on the homepage$/) do
    page.driver.browser.manage.window.maximize
    visit ('http://localhost:8000/#!/')
  end

Then("I see the system name") do
    message = find('h1')
    if message.text != "Mensajero"
    	raise "System name should be Mensajero"	
    end
end

When("I click on {string} button") do |string|
    click_button(string)
end

