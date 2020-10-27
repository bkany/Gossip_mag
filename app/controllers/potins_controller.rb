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
  	@potin = Potin.find(params[:id])
  end
  
   def new
		@potin = Potin.new
  end

  def create
		@potin = Potin.new('title' => params[:title], 'content' => params[:content], 'user_id' => params[:user_id])
		if (@potin.save)
			flash.notice = "C'est enregistré !"
			redirect_to(@potin)
		end
  end
  
end
