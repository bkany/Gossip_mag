class SessionController < ApplicationController
  
  def index

  end
  
  def show

  end
  
  def new 
  	@session = Session.new
  end
  
  def create ...  end
  
  def update ...  end
  
  def destroy 
  	@session.destroy
  	redirect_to "/"
  end
  
end
