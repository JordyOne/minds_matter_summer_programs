class SessionsController < ApplicationController
  skip_before_filter :login_check?

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page
      log_in(@user)
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to user_path @user
    else
      # create error message
      flash[:danger] = 'Invalid email/password combination' # Error message
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
