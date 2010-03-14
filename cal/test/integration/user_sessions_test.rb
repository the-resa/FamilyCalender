require 'test_helper'

class UserSessionsTest < ActionController::IntegrationTest
  
  setup do
    :activate_authlogic
  end
  
  test "verified user logs in" do  
    @user_params = {:id => "1", :login => "hans", :password => "test", :email => "af@aon.at"}
    @user_1 = User.new(@user_params)
	@user_1.save
	UserSession.create(@user_1)
	
    visit new_user_session_path
	fill_in "Login", :with => @user_1.login
	fill_in "Password", :with => @user_1.password
	click_button "Login"
	assert_equal @user_1.id, session["user_credentials_id"]
  end
  
  test "invalid user logs in" do
    @user_params = {:id => "1", :login => "berta", :password => "falsch", :email => "af@aon.at"}
    @user_1 = User.new(@user_params)
	@user_1.save
	UserSession.create(@user_1)
  
    visit new_user_session_path
	fill_in "Login", :with => @user_1.login
	fill_in "Password", :with => "falschesPasswort"
	click_button "Login"
	assert_nil session["user_credentials_id"]
  end
  
end
