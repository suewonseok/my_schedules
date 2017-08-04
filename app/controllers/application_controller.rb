class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionHelper
  def authen
    redirect_to new_session_path if !user_signed_in?
  end
end
