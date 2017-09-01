# Classe com as acoes executadas no google!
class Googlebusca
  include Capybara::DSL


  def busca (cruzeiro)
    fill_in id: 'lst-ib', with: cruzeiro
    find(:id, 'hplogo').click
    find('[name=btnK]').click
  end

  def seleciona  
    click_on 'cruzeiro | GloboEsporte.com'
  end

  def confirma 
    page.has_content?(:class ['header-editoria--link ellip-line'])
  end
end


