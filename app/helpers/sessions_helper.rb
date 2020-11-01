module SessionsHelper
	
	def current_user
		if session[:id]
			current_user = User.find_by(id: session[:user_id])
		elsif cookies[:user_id]
    	user = User.find_by(id: cookies[:user_id])
    	if user && BCrypt::Password.new(user.remember_digest).is_password?(cookies[:remember_token])
      	log_in user
      	current_user = user
    	end
		end
	end
	
	
	def login(user)
		session[:user_id] = user.id
	end
	
	def remember(user)
		remember_token = SecureRandom.urlsafe_base64 # Création d'un token = suite aléatoire de caractères
		user.remember(remember_token) #stockage dans la BDD
		cookies.permanent.signed[:user_id] = user.id
		cookies.permanent.signed[:remember_token] = remember_token
	end
	
	def logged_in?(user)
		!current_user.nil?
	end
	
	def forget(user)
		user.update(remember_digest: nil)
		cookies.delete(:user_id)
		cookies.delete(:remember_token)
	end
	
	def logout(user)
		session.delete(:user_id)
		forget(user)
	end
	
end
