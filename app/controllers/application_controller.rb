class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_devise_params, if: :devise_controller?

  protect_from_forgery with: :exception
	def after_sign_in_path_for(resource)
		show_student_path(current_student)
	end
	def after_sign_up_path(resource)
		show_student_path(current_student)
	end
	def configure_devise_params
      devise_parameter_sanitizer.for(:sign_up) do |parameters|
          parameters.permit(:email, :password, :password_confirmation, :student_number, :created_at, :updated_at)
        end
      devise_parameter_sanitizer.for(:account_update) do |parameters|
    		parameters.permit(:email, :password, :password_confirmation, :name, :student_number, :created_at, :updated_at, :current_password)
    	end

    end  
end
