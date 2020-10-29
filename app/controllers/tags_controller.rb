class TagsController < ApplicationController
  
  def index
  	@tag= Tag.all
  end
  
  def show
  	@id = params[:id]
  	@tag = Tag.find(@id)
  end
  
  def new ... end
  
  def create ... end
  
  def edit ... end
  
  def update ... end
  
  def destroy 
  	@tag = Tag.find(params[:id])
  	@tag.destroy
		redirect_to "/"
  end
  
end
