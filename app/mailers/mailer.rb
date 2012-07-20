class Mailer < ActionMailer::Base

	default :from => "waynelin.tw@gmail.com"
	default :to => "revolution@inaika.com"

    def new_message(message)
    	@message = message
    	mail(:subject => "Video Sumbission from: #{message.name}, #{message.subject} ")
  end
end
