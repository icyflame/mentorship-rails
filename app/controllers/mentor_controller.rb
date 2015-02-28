class MentorController < ApplicationController
	def index
	end

	def show
		# render plain: current_mentor.id.to_i

		if not (mentor_signed_in? and (current_mentor.id.to_i == params[:id].to_i))
			render plain: "You don't have privileges to view this page."
		else
			@mentor = current_mentor
			# @mentees = TieMentorWithMentees.find_all_by_mentor_id(current_mentor.id)
			@mentees = TieMentorWithMentees.where(:mentor_id => current_mentor.id)
			# render plain: @mentees.inspect()
		end
	end

	def complete_profile
	end
end
