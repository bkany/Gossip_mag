class PagesController < ApplicationController

	def accueil
		@potins = Potin.all
	end
  
  def welcome
  	@name = params[:name]
  end

end
