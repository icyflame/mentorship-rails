class Mentors::RegistrationsController < Devise::RegistrationsController
	protected
	def after_sign_up_path_for(resource)
		mentor_complete_profile_path
	end

	def after_update_path_for(resource)
		signed_in_root_path(resource)
	end
	def update_resource(resource, params)
		resource.update_without_password(params)
	end
end
