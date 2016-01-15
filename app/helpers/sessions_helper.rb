module SessionsHelper

	#Log in the user
	def log_in(user)
		session[:user_id] = user_id
	end

	#Remembers a user in a persistent session
	def remember(user)
		user.remember
		cookies.permanent.signed[:user_id] = user.id
		cookies.permanent[:remember_token] = user.remember_token
	end

	#Return true if the given user is the current user
	def current_user?(user)
		user == current_user
	end

	#Return the current logged-in user
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#Return true if the user is logged in, false otherwise
	def logged_in?
		!current_user.nil?
	end

	#Log out the current user
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

	#Redirect to stored location (or to the default)
	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default)
		session.delete(:forwarding_url)
	end

	#Store the URL trying to be accessed
	def store_location
		session[:forwarding_url] = request.url if request.get?
	end

	
end
