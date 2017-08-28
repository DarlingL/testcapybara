Dado(/^que esteja na Home do google$/) do
 $home = HomeGoogle.new
 $home.load_page
 $googleactions = GoogleBusca.new
end

Quando(/^realizada uma busca por Cruzeiro Globo Esporte$/) do
 $googleactions.busca_melhor
end

Quando(/^selecionado o primeiro resultado$/) do
   $googleactions.sele_melhor
end

Entao(/^estarei na pagina do melhor time do mundo$/) do
   $googleactions.confir_melhor
end








