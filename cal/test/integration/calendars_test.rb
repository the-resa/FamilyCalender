require 'test_helper'

class CalendarsTest < ActionController::IntegrationTest
  
  # funktioniert nicht, da wir das formular in einem partial rendern
  # leider haben wir mit webrat hier kein partial formular testen koennen
  
  # des weiteren war es uns nicht moeglich, mit webrat auf den application
  # header verlinken zu koennen
  
  test "create new calendar" do
    visit calendars_path
	
	# click_link "Create new calendar"
	
	# fill_in "Title", :with => "Uni"
	# fill_in "Description", :with => "my curriculum"
	
	# assert_difference("Calendar.count") do
	  # click_button "Create"
	# end
  end
    
end
