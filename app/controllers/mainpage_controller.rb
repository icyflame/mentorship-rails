class MainpageController < ApplicationController
	def index
	end

	def test
	end

	def loginperson
  	# render plain: params.inspect()

  	@email = params[:email]
  	@password = params[:password]

  	if not @user = Mentor.find_by_email(params[:email])
  		if not @user = Student.find_by_email(params[:email])
  			render plain: "Registered neither as a student nor as a mentor."
  		end
  	end

  	if @user.valid_password?(params[:password])

  		sign_in @user
  		redirect_to root_path

  	else

  		render plain: "Wrong password or not registered!"

  	end
  end
end
