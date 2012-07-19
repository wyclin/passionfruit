class VideoMessage < ActiveRecord::Base
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming

  attr_accessible :email, :location, :name, :video_link
	

	validates :name, :email, :location, :video_link, :presence => true
	validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
	
	def after_initialize(attributes = {})
    	attributes.each do |name, value|
      		send("#{name}=", value)
    	end
  	end

  	def persisted?
  		false
  	end  
end
