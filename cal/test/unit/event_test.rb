require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "save an event" do
    event = Event.new(:title => "Test Eintrag", :description =>"Hallo", :start_on => "2009-01-01")
	event.save
    assert_equal 1, Event.count
  end
  
  test "should have a title" do
    event = Event.make_unsaved(:title => nil)
	assert !event.valid?, "should have an error" 
  end
  
  test "should be longer than 3 characters" do
    event = Event.make_unsaved(:title => "ha")
	assert !event.valid?
  end
  
  test "should not be longer than 40 characters" do
    event = Event.make_unsaved(:title => "********************************************************")
	assert !event.valid?
  end
end
