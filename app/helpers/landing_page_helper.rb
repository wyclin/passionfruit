module LandingPageHelper
	def is_main_page(page_name)
		return page_name.eql? "main"
	end
end
