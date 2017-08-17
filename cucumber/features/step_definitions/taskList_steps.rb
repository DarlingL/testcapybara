Dado(/^que eu esteja na pagina principal do google$/) do
  visit  "http://www.google.com.br/"
end

Dado(/^digito na busca Cruzeiro Globo Esporte$/) do
  fill_in id:"lst-ib", with:"Cruzeiro Globo Esporte"
end

Dado(/^Clico em Buscar$/) do
  find(:id, 'hplogo').click
  find(:xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]').click
end

Dado(/^Seleciono o primeiro resulto$/) do
  click_on "cruzeiro | GloboEsporte.com"
end

Entao(/^estarei na pagina do melhor time do mundo$/) do
 page.has_content? (:class ['header-editoria--link ellip-line'])
end