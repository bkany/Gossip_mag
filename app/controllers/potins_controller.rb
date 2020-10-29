class PotinsController < ApplicationController
  
  def index
  	@posts = Potin.all
  end
  
  def show 
 		@potin = Potin.find(params[:id])
		@potin_title = @potin.title
		@potin_author_first_name = @potin.user.first_name
		@potin_author_last_name = @potin.user.last_name
		@potin_content = @potin.content
		@potin_user_id = @potin.user_id
  end
  
  def edit
  	if params[:id] = session[:id]
  		@potin = Potin.find(params[:id])
  	else
  		redirect_to(@potin)
  	end
  end
  
   def new
		@potin = Potin.new
  end

  def create
		@potin = Potin.new('title' => params[:title], 'content' => params[:content], 'user_id' => session[:user_id])
		
		if (@potin.save)
			flash[:success] = "Ton potin est enregistré !"
			redirect_to(@potin)
		else 
			flash[:danger] = "Ton potin n'a pas été sauvegardé. "
			redirect_to 'potins/new'
		end
  end
  
  def update
  	@potin = Potin.find(params[:id])
  	if @potin.user_id = session[:user_id] && @potin.update(potin_params)
  		redirect_to(@potin)
  	else
  		render :edit
  	end
  end
  
  def destroy
  	@potin = Potin.find(params[:id])
  	if @potin.user_id = session[:user_id]
  		@potin.destroy
			redirect_to "/"
		end
  end
  
  
  
  private
  
  def potin_params
	 	potin_params = params.require(:potin).permit(:title, :content, session[:user_id])
	end
  
end
