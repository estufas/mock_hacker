class UsersController < ApplicationController
  def new
  	@users = User.new
  end

  def create
  	User.create user_params
  	redirect_to users_path
  end
end
