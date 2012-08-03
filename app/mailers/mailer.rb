class Mailer < ActionMailer::Base

	default :from => "revolution@inaika.com"
	default :to => "revolution@inaika.com"
   
   def new_message(message) 
    	@message = message
    	mail(:subject => "Video Submission from: #{message.name}, #{message.location} ")
  end

  def new_feedback_message(message)
    	@message = message
    	mail(:subject => "Demo Feedback from: #{message.name}")
  end

end
