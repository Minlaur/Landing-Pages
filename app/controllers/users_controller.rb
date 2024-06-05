class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'Thank you! Your information is saved'
    else
      render :new, alert: 'There seems to be a problem.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

end
