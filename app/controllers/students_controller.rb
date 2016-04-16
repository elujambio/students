class StudentsController < ApplicationController
	before_action :authenticate_student!, only: [:show] 
	def show 
		@student = current_student
	end 
	def edit
		@student = Student.find(params[:id])
	end
	def update
		@student = Student.find(params[:id])
		 
		if @student.update(student_params)
			flash[:notice] = "Updated profile"
			redirect_to show_student_path(@student)
		else
			flash[:error] = "Profile not updated. Error."
			render action: "edit"
		end
	end
	private 
	def student_params
		params.require(:student).permit(:name) 
	end
end