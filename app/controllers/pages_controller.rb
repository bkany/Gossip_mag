class PagesController < ApplicationController

	def accueil
		@potins = Potin.all
	end

  def team

  end
  
  def welcome
  	@name = params[:name]
  end

end
