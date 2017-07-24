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
    raise user_params.inspect
    @user = User.new(user_params)
    if @user.save
     # log_in @user
      flash[:success] = "Welcome!"
      #redirect_to @user
    else
      render 'new'
    end
  end

  


  def change_password

  end

  private

    def user_params
      params.require(:user).permit(:username,:name,:surname, :password,:password_confirmation)
    end
  
end
