class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

    #include SessionsHelper
    helper_method :current_user


    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    

    def authorize
      redirect_to '/login' unless current_user
    end




    private

    def confirm_logged_in

    #raise x.inspect
    unless session[:user_id]

      flash[:notice] = "Please Log in"

      redirect_to({:controller => 'sessions', :action=>'login'})

       return false #halts the before action

     else
       return true
     end
   end


   
 end

