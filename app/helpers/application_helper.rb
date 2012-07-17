module ApplicationHelper
	def full_title (page_title)
		base_title = "Inaika - Find a teacher you'll love!"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def logged_in (page_name)
		if (page_name.eql?'welcome') or (page_name.eql? 'student_signup')
			return false	
		else
			return true
		end	
	end

end
