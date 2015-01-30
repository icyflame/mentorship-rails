class MentorController < ApplicationController
	def index
	end

	def show
		if mentor_signed_in?
			if current_mentor.id == params[:id]
				redirect_to root_path
			end
		else
			redirect_to root_path
		end
	end
end
