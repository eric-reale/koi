class ApplicationController < ActionController::Base
 # skip_before_action :verify_authenticity_token
  protect_from_forgery with: :exception # :null_session
  before_action :authenticate_user!

  before_action :configure_devise, if: :devise_controller?

  private

  def configure_devise
    devise_parameter_sanitizer.permit(:account_update, keys: [ :first_name, :last_name, :username, images: [] ])
  end
end
