class MentorController < ApplicationController
	def index
	end

	def show
		if mentor_signed_in?
			if current_mentor.id.to_i == params[:id].to_i
				render plain: "You don't have privileges to view this page."
			end
		else
			render plain: "You don't have privileges to view this page."
		end
	end
end
