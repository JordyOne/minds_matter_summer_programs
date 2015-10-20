class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :login_check?

  protect_from_forgery with: :exception
  include SessionsHelper

  def login_check?
    logged_in?
  end

  def admin_check?
    return if current_user.admin
    redirect_to user_path(current_user.id)
  end
end
