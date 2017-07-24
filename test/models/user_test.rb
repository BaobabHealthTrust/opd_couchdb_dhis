require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user =User.new
  end
  test "username should be required" do
   
     @user.valid?
     assert_includes(@user.errors[:username],"cant be blank")
  end  

  end
