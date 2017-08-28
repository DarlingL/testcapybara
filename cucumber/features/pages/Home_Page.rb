class HomeGoogle
	include Capybara::DSL
	def load_page	
		visit  "http://www.google.com.br/"
	end
end