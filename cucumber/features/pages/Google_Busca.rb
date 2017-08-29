# Classe com as acoes executadas no google
class Googlebusca
  include Capybara::DSL

  def busca
    fill_in id: 'lst-ib', with: 'Cruzeiro Globo Esporte'
    find(:id, 'hplogo').click
    find(:xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]').click
  end

  def seleciona
    click_on 'cruzeiro | GloboEsporte.com'
  end

  def confirma
    page.has_content?(:class ['header-editoria--link ellip-line'])
  end
end
