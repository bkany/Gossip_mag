class PagesController < ApplicationController

	def accueil
		@potins = Potin.all
	end

end
