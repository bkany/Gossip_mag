class CommentsController < ApplicationController
  
  def index
  	@comments = Comment.all
  end
  
  def show 
 		@comment = Comment.find(params[:id])
  end
  
  def edit
  	@comment = Comment.find(params[:id])
  end
  
   def new
		@comment = Comment.new
  end

  def create
		@comment = Comment.new('title' => params[:title], 'content' => params[:content], 'potin_id' => params[:potin_id], 'user_id' => session[:id])
		
		if (@comment.save)
			flash[:success] = "Ton potin est enregistré !"
			redirect_to(@comment)
		end
  end
  
  def update
  	@comment = Comment.find(params[:id])
  	if @comment.update(comment_params)
  		redirect_to(@comment)
  	else
  		render :edit
  	end
  end
  
  def destroy 
  	@comment = Comment.find(params[:id])
  	@comment.destroy
		redirect_to "/"
  end
  
  
  
  private
  
  def comment_params
	 	comment_params = params.require(:comment).permit(:title, :content, @comment.potin_id, @comment.user_id)
	end
  
end
