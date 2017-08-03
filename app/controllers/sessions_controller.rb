require 'bcrypt'
class SessionsController < ApplicationController
  before_action :confirm_logged_in, :except => [:login, :login_attempt, :logout]
  def new
  end

  def home
  end

  def login
  	#Login Form
    render :layout => false
  end

  def login_attempt

    if params[:username].present? && params[:login_password].present?
         authorized_user = User.authenticate(params[:username],params[:login_password])

    end

    if authorized_user
      #mark user as logged in
      session[:user_id]=authorized_user.id

      session[:username]=authorized_user.username

     @user_logged = session[:username]


      flash[:logged_in] = "You are logged in as #{authorized_user.username}"

      redirect_to({:action => 'home'})

    else
      flash[:notice] = "Invalid Username or Password"
      redirect_to({:action => 'login'})

    end
  end


  def logout
   # mark user as logged out
    session[:user_id] = nil
    session[:username] = nil
    flash[:logged_out] = "Logged Out"
    redirect_to(:action => "login")

      # session[:user_id] = nil
      # redirect_to :action => 'login'
  end
end
