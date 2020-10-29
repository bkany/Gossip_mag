class SessionsController < ApplicationController
  
  def create 
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:id] = user.id
  		flash[:notice] = "Bienvenue #{user.first_name} #{user.last_name}"
  		redirect_to '/'
  	else
  		flash[:danger] = "Nous n'avons pas réussi à vous authentifier - Veuillez réessayer"
  		redirect_to 'sessions/new'
  	end
  end

  def destroy 
  	session.delete(:user_id)
  	flash[:notice] = "Tu es désormais déconnecté. Reviens quand tu veux !"
  	redirect_to "/"
  end
  
end
