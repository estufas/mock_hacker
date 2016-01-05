class UsersController < ApplicationController
  def new
  	@users = User.new
  end

  def create
  	User.create user_params
  	# redirect_to users_path
  end

  private

  def user_params
  	params.require(:user).permit(:email, :name, :password)
  end
end
