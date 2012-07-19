class StaticPagesController < ApplicationController
  def welcome
  end

  def signup
  	@user_type
  end

  def about
  end

  def contact
  end

  def search
  	@search_entry
  end

  def landingpage
    render :layout => false    
  end

  def send_mail
    Mailer::deliver_contact_email(params[:email])
  end

  def test_contact
  end
end
