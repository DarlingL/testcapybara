# Classe com as acoes executadas no google!
class Googlebusca < SitePrism::Page


element :campo_busca, :id, 'lst-ib'
element :foco_logo, :id, 'hplogo'
element :pesquisa_google, 'input[name=btnK]'
element :link, :xpath, "//*[@id='rso']/div[1]/div/div/div/div/h3/a"
element :confirmado,:xpath, "//*[@id='header-produto']/div[2]/div/div/h1/div/a"

  def busca (cruzeiro)  
    campo_busca.set cruzeiro
    foco_logo.click
    pesquisa_google.click
  end

  def seleciona  
   link.click
  end
end


