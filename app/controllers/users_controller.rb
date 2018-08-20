class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = User.find_by(username: params[:username])
  end

  def update
    @user = User.find_by(username: params[:username])
    @user.update(user_params(params))

    @user.avatar.purge if @user.avatar.attached?
    @user.avatar.attach(params[:avatar])
  end

  private

  def user_params(params)
    params.require(:user).permit(:email, :name, :username, :bio)
  end
end
