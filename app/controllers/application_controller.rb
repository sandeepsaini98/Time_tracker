class ApplicationController < ActionController::Base
  # before_action :configure_sign_up_params, only: [:create]
  before_action :authenticate_user!


    # protected
    #
    # def configure_sign_up_params
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    # end

end
