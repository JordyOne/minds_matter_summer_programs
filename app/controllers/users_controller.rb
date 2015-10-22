class UsersController < ApplicationController
  def new
    @@user = User.new
  end

  def create
    @user = User.new(user_params)
    if keyword_check
      @user.admin = true if user_params[:keyword] == "Teacher"
      if @user.save
        log_in user
        remember(user)
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
      else
        render :new
      end
    else
      @user.errors.add(:keyword, "not valid")
      render :new
    end
  end

  def show
    @@user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :keyword)
  end

  def keyword_check
    user_params[:keyword] == "Thinker" || user_params[:keyword] == "Teacher"
  end
end