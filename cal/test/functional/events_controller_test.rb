require 'test_helper'

class EventsControllerTest < ActionController::TestCase

  setup :activate_authlogic
  
  context "a logged in user" do
    setup do
	  @user_params = {:id => "1", :login => "hans", :password => "test", :email => "af@aon.at"}
      @user_1 = User.new(@user_params)
	  @user_1.save
	  UserSession.create(@user_1)
	  
	  @calendar_1 = Calendar.make
	end
	
	context "GET to :index" do
	  setup do
        get :index, :calendar_id => @calendar_1.id
	  end
      should_respond_with :success
    end
	
	context "GET to: new" do
      setup do
        get :new, :calendar_id => @calendar_1.id
	  end
      should_respond_with :success
    end
	
	context "create event" do
	  should "increase Event.count" do
        assert_difference('Event.count') do
          post :create, :calendar_id => @calendar_1.id, :event => {:title => "test", :description => "test"}
        end
	    assert_redirected_to calendar_path(:id => @calendar_1.id)
      end
    end
	
	context "GET to :edit" do
      setup do
	    event_1 = Event.make  
        get :edit, :calendar_id => @calendar_1.id, :id => event_1.id
	  end
      should_respond_with :success
    end
	
	context "update event" do
      setup do
	    event_1 = Event.make
        put :update, :calendar_id => @calendar_1.id, :id => event_1.id, :event => {:title => "test", :description => "test" }
	  end
	  should "redirect to calendar_path" do
        assert_redirected_to calendar_event_path
	  end
    end	
	
	context "destroy event" do
      setup do
        @event_1 = Event.make(:id => "1")
	  end
  
      should "decrease Event.count" do
        assert_difference('Event.count', -1) do
          delete :destroy, :calendar_id => @calendar_1.id, :id => @event_1.id
        end
	    assert_redirected_to calendar_path
	  end
    end  
  end
end

 