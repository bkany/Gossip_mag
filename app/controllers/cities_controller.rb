class CitiesController < ApplicationController
  
  def index
  	@cities = City.all
  end
  
  def show
  	@id = params[:id]
  	@city = City.find(@id)
  	@city_potins = Potin.all.select{ |p| p.user.city_id = @id }
  end
  
  def edit
  	@city = City.find(params[:id])
  end
  
  def new 
  	@city = City.new
  end
  
  def create
  	@city = City.new('name' => params[:name], 'zip_code' => params[:zip_code])
		
		if (@city.save)
			flash.notice = "C'est enregistré !"
			redirect_to(@city)
		end
  end
  
  def update ... end
  
  def destroy ... end
  
  
  
end
