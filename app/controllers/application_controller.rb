class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :name
  	devise_parameter_sanitizer.for(:sign_up) << :passoutyear
  	devise_parameter_sanitizer.for(:sign_up) << :department
  	devise_parameter_sanitizer.for(:sign_up) << :hall
  	devise_parameter_sanitizer.for(:sign_up) << :field
    devise_parameter_sanitizer.for(:sign_up) << :firm
    devise_parameter_sanitizer.for(:sign_up) << :designation
    devise_parameter_sanitizer.for(:sign_up) << :phone
    devise_parameter_sanitizer.for(:sign_up) << :skype_name

  	devise_parameter_sanitizer.for(:sign_up) << :rollnum
  	devise_parameter_sanitizer.for(:sign_up) << :joinyear

  	devise_parameter_sanitizer.for(:account_update) << :passoutyear
  	devise_parameter_sanitizer.for(:account_update) << :department
  	devise_parameter_sanitizer.for(:account_update) << :hall
  	devise_parameter_sanitizer.for(:account_update) << :field

    devise_parameter_sanitizer.for(:account_update) << :firm
    devise_parameter_sanitizer.for(:account_update) << :designation
    devise_parameter_sanitizer.for(:account_update) << :phone
    devise_parameter_sanitizer.for(:account_update) << :skype_name

  	devise_parameter_sanitizer.for(:account_update) << :rollnum
  	devise_parameter_sanitizer.for(:account_update) << :joiningyear
  end
end
