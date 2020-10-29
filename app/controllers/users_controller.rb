class UsersController < ApplicationController
  
  def index
  	@user = User.all
  end
  
  def show
  	@id = params[:id]
  	@user = User.find(@id)
  	@user_first_name = @user.first_name
  	@user_last_name = @user.last_name
  	@user_email = @user.email
  	@user_age = @user.age
  	@user_description = @user.description
  	@user_city = @user.city_id
  end
  
  def edit
  	@user = User.find(params[:id])
  end
  
  def new 
  	@user = User.new
  	#@user = User.new(email: => params[:email], 'password_digest' => params[:password_digest])
  end
  
  def create
  	@user = User.new('first_name' => params[:first_name], 'last_name' => params[:last_name], 'description' => params[:description], 'email' => params[:email], 'age' => params[:age].to_i, 'password' => params[:password], 'city_id' => params[:city_id])
  	
  	if (@user.save)
			flash[:success] = "Ton compte est bien créé !"
			redirect_to "/"
		end
  	
  end
  
  def update 
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  		redirect_to(@user)
  	else
  		render :edit
  	end
  end
  
  def destroy 
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to "/"
  end

  private
  
  def user_params
	 	user_params = params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :password, :city_id)
	end
  
end
