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
end
