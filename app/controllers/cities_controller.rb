class CitiesController < ApplicationController
  
  def index
  	@cities = City.all
  end
  
  def show
  	@id = params[:id]
  	@city = City.find(@id)
  	@city_potins = Potin.all.select{ |p| p.user.city_id = @id }
  end
  
end
