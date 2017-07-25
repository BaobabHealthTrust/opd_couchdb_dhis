class UsersController < ApplicationController
  
    before_action :confirm_logged_in

   attr_accessor :password

  def index
  	
  end

  def show

     @user=User.all
     # Find a list of all the people
    
end

     

   def new
    @user = User.new

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

   @user= User.find(session[:user_id])
   
 
  end

  def edit_account

   @user= User.find(session[:user_id])
 
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
        
      redirect_to "/my_account"
    else
      redirect_to "/my_account"
    end
     
  end

  def change_password
   
    @section = "Change Password"

    @targeturl = "/change_password"

    @user= User.find(session[:user_id])
  end

   def confirm_password
      user = User.current_user rescue User.find(params[:user_id])
      password = params[:old_password]

      if user.password_matches?(password)
          render :text => {:response => true}.to_json
      else
        render :text => {:response => false}.to_json
      end
        
  end

def update_password
     
    user = User.current_user
    user.plain_password = params[:user][:new_password]
    user.password_attempt = 0
    user.last_password_date = Time.now
    user.save
    
    flash["notice"] = "Your new password has been changed succesfully" 
    Audit.create(record_id: user.id, audit_type: "Audit", level: "User", reason: "Updated user password")
    
    redirect_to '/my_account'

  end




  

  private

    def user_params
      params.require(:user).permit(:username,:name,:last_name, :email, :password,:confirm_password)
    end
  
end
