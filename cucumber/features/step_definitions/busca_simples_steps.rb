# teste
Dado(/^que esteja na Home do google$/) do
  @home = Homegoogle.new
  @home.load_page
  @googleactions = Googlebusca.new
end

Quando(/^realizada uma busca por Cruzeiro Globo Esporte$/) do
  @googleactions.busca
end

Quando(/^selecionado o primeiro resultado$/) do
  @googleactions.seleciona
end

Entao(/^estarei na pagina do melhor time do mundo$/) do
  @googleactions.confirma
end
