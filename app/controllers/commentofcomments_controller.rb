class CommentsController < ApplicationController
  
  def index
  	@commentofcomments = Commentofcomment.all
  end
  
  def show 
 		@commentofcomment = Commentofcomment.find(params[:id])
  end
  
  def edit
  	@commentofcomment = Commentofcomment.find(params[:id])
  end
  
   def new
		@commentofcomment = Commentofcomment.new
  end

  def create
		@commentofcomment = Commentofcomment.new('title' => params[:title], 'content' => params[:content], 'comment_id' => params[:comment_id], 'user_id' => params[:user_id])
		
		if (@commentofcomment.save)
			flash[:success] = "Ton commentaire est enregistré !"
			redirect_to(@commentofcomment)
		end
  end
  
  def update
  	@commentofcomment = Commentofcomment.find(params[:id])
  	if @commentofcomment.update(commentofcomments_params)
  		redirect_to(@commentofcomment)
  	else
  		render :edit
  	end
  end
  
  def destroy 
  	@commentofcomment = Commentofcomment.find(params[:id])
  	@commentofcomment.destroy
		redirect_to "/"
  end
  
  
  
  private
  
  def commentofcomment_params
	 	commentofcomment_params = params.require(:commentofcomment).permit(:title, :content, @commentofcomment.comment_id, @commentofcomment.user_id)
	end
  
end
