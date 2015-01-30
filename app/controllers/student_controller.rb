class StudentController < ApplicationController
	def index
	end

	def show
		if student_signed_in?
			if not current_student.id.to_i == params[:id].to_i
				render plain: "You don't have privileges to view this page."
			end
		else
			render plain: "You don't have privileges to view this page."
		end
	end
end
