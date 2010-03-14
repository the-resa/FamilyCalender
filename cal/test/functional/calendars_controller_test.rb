require 'test_helper'

class CalendarsControllerTest < ActionController::TestCase

  setup :activate_authlogic

  test "should get index" do
    
    @user_params = {:id => "1", :login => "hans", :password => "test", :email => "af@aon.at"}
    @user_1 = User.new(@user_params)
	@user_1.save
	UserSession.create(@user_1)

    get :index
    assert_response :success
    assert_not_nil assigns(:calendars)
  end

  test "should get new" do
  
    @user_params = {:id => "1", :login => "hans", :password => "test", :email => "af@aon.at"}
    @user_1 = User.new(@user_params)
	@user_1.save
	UserSession.create(@user_1)
	
    get :new
    assert_response :success
  end
  

end