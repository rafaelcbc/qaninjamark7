Dado("que eu acesso a página principal") do
  visit 'http://192.168.15.5:5000'
end

Quando("eu faço login com {string} e {string}") do |email, senha|
  @email = email
  find('input[name=email]').set email
  find('#login_password').set senha
  click_button 'Login'
end

Então("devo ser autenticado com sucesso") do
  expect(page).to have_content @email
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end