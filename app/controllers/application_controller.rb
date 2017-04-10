class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:uuid, :first_name, :last_name, :phone])
  end

  def user_not_authorized
  	flash[:warning] = "You are not authorized to perform this action."
  	redirect_to root_path
  end

  def record_not_found
    flash[:alert] = "Record not found."
    redirect_to action: :index
  end
end
