module SessionsHelper

def log_in( user)
    session[:user_id] = user.id
    
end

def current_user

  if @current_user.nil?

     # @current_user = User.find_by_id(id: session[:user_id]).last
      @current_user = User.find_by_id(id: session[:user_id])
      raise  @current_user.inspect
  else
      @current_user
  end
	
end	

def logged_in?
    !current_user.nil?
end

end
