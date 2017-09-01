# teste
Dado(/^que esteja na Home do google$/) do
  @home = Homegoogle.new
  @home.load
  @googleactions = Googlebusca.new
end

Quando(/^realizada uma busca por (.*)$/) do |cruzeiro| 
  @googleactions.busca(cruzeiro)
end
Quando(/^selecionado o primeiro resultado$/) do
  @googleactions.seleciona
end

Entao(/^estarei na pagina do melhor time do mundo$/) do
  @googleactions.wait_for_confirmado
end

