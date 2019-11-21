class ApplicationController < ActionController::Base
  before_action :configure_devise, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

  def configure_devise
    devise_parameter_sanitizer.permit(:user_update, keys: [ :first_name, :last_name, :username, images: [] ])
  end
end
