# Classe para carregar a home do google
class Homegoogle
  include Capybara::DSL
  def load_page
    visit 'http://www.google.com.br/'
  end
end
