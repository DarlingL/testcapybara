Dado(/^que eu esteja na pagina principal do google$/) do
  visit  "http://www.google.com.br/"
end

Dado(/^digito na busca Cruzeiro Globo Esporte$/) do
  fill_in id:"lst-ib", with:"Cruzeiro GloboEsporte"
end

Dado(/^Clico em Buscar$/) do
  click_on "Pesquisa Google"
end

Dado(/^Seleciono o primeiro resulto$/) do
click_on "cruzeiro | GloboEsporte.com"
end

Entao(/^estarei na pagina do melhor time do mundo$/) do
 page.has_content? (:class ['header-editoria--link ellip-line'])
end