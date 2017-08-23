class UsersController < ApplicationController
  
  before_action :confirm_logged_in

  attr_accessor :password

  def index
  	
  end

  def show
    @user=User.all
       
  end


  def new
    
    @user = User.new

  end

  def view
     @user = User.find(params[:id])
  end

  def create
   @user = User.new(user_params)
    if @user.save
     # log_in @user
      render 'show'
      flash[:success] = "Welcome!"
      #redirect_to @user
    else
      render 'new'
    end
  end

  def confirm_username

      username = params[:username]
     
      user = User.by_username.key(username).last
      if user
          render :text => {:response => true}.to_json
      else
        render :text => {:response => false}.to_json
     end
  end

  def my_account

     user_id = session[:user_id]
     
     
    @user = User.find(session[:user_id])
     
   
  end

  def edit_account
   
   @user = User.find(params[:id])
 
   @section = "Edit Account"

    @targeturl = "/update_demographics"
  end

  def update_demographics
    @user = User.find(params[:user][:id]) rescue nil
          
    if @user.present?
      @user.name = params[:user][:name]
      @user.last_name = params[:user][:last_name]
      @user.email = params[:user][:email]
      @user.save
        
      redirect_to "/users/show"
    else
      redirect_to "/users/show"
    end
     
  end

  def change_password
    @section = "Change Password"

    @targeturl = "/change_password"
    @user = User.find(params[:id])
  end

  
def update_password
   
   @user = User.current_user rescue User.find(params[:user_id])

    user_password = params[:user][:new_password]
   
    old_password = params[:user][:password]
        
    if @user.match_password(old_password)
       @user.password=user_password
       @user.save
       flash[:notice] = "Password changed successfully"
       redirect_to '/my_account'
    else
       flash[:notice] = "Current password mismatch"
       redirect_to '/users/change_password/'
    
    end  
  
  end

  private

    def user_params
      params.require(:user).permit(:username,:name,:last_name, :email, :password,:confirm_password)
    end
  
end
