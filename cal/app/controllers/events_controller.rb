class EventsController < ApplicationController

  layout "calendars"

  def create
    @calendar = Calendar.find(params[:calendar_id])
	@event = @calendar.events.build(params[:event])
   
    if @event.save
	  flash[:notice] = "Event was successfully created!"
	  redirect_to calendar_path(@calendar)
    else
      render 'new'
    end
  end 
end
