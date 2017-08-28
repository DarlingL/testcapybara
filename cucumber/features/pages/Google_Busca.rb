class GoogleBusca 
    include Capybara::DSL

	def busca_melhor  
	  fill_in id:"lst-ib", with:"Cruzeiro Globo Esporte"
	  find(:id, 'hplogo').click
	  find(:xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]').click
	end

	def sele_melhor
		 click_on "cruzeiro | GloboEsporte.com"
	end

	def confir_melhor
		page.has_content? (:class ['header-editoria--link ellip-line'])
	end
end