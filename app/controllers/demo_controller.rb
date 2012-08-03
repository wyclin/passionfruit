class DemoController < ApplicationController
	def welcome
	end

	def signup
	end

	def search
	end

	def student_signup
		
	end

	def teacher_signup
	end

	def student_profile
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(params[:message])
    
	    if @message.valid?
	      Mailer.new_feedback_message(@message).deliver
	      redirect_to("/demo/feedback_thankyou", :notice => "Message was successfully sent.")
	    else
	      flash.now.alert = "Please fill all fields."
	      render :new    
	    end
	end
end
