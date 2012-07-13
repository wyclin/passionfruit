class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def create
		@student = Student.new(params[:student])
		if @student.save
			#Handle successful save
		else
			render 'new'
		end
	end
	
	def show
		@student = Student.find(params[:id])
	end

	def new_demo
		@student = Student.new
	end
end
