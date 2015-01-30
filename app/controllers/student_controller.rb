class StudentController < ApplicationController
	def index
	end

	def show
		if student_signed_in?
			if current_student.id == params[:id]
				redirect_to root_path
			end
		else
			redirect_to root_path
		end
	end
end
