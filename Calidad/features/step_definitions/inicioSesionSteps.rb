Dado(/^que estoy en la pagina principal$/) do
    page.driver.browser.manage.window.maximize
    visit ('http://localhost:8000/#!/')
  end

Cuando("presiono sobre el enlace {string}") do |link_name|
    click_link(link_name)
    sleep(2)
end

Cuando("lleno el campo de correo electronico con {string}") do |correo|
    fill_in('email', :with => correo)
    sleep(2)
end
  
Cuando("lleno el campo de contraseña con {string}") do |contrasenha|
    fill_in('pwd', :with => contrasenha)
    sleep(2)
end
  
Cuando("presiono el boton {string}") do |boton|
    click_button(boton)
    sleep(2)
end
  
Entonces("veo el titulo {string}") do |titulo|
    in_page_title = find('h1')
    if in_page_title.text != titulo
    	raise "El titulo deberia ser " + titulo
    end
end

