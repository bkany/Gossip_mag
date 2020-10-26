class UsersController < ApplicationController
  def user
  	@id = params[:id]
  	@user = User.find(@id)
  	@user_first_name = @user.first_name
  	@user_last_name = @user.last_name
  	@user_email = @user.email
  	@user_age = @user.age
  	@user_description = @user.description
  end
end
