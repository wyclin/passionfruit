class LandingPageController < ApplicationController

  def new
    @message = Message.new
    
  end

  def main
  end

  def thankyou
  	
  end

  def create
  	@message = Message.new(params[:message])
    
    if @message.valid?
      Mailer.new_message(@message).deliver
      redirect_to("/landing_page/thankyou", :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new    
    end
  end

end
