class StudentController < ApplicationController
	def index
	end

	def show
		if student_signed_in?
			if not current_student.id.to_i == params[:id].to_i
				render plain: "You don't have privileges to view this page."
			else
				# this person is permitted to see the page
				# find the mentor for this student
				@mentor = nil
				@mentorallotted = false
				if TieMentorWithMentees.find_by_student_id(current_student.id)
					# student has a mentor
					@mentorid = TieMentorWithMentees.find_by_student_id(current_student.id).mentor_id
					@mentor = Mentor.find(@mentorid)
					@mentorallotted = true
				end
			end
		else
			render plain: "You don't have privileges to view this page."
		end
	end
end
