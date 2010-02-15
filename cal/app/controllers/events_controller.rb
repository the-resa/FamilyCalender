class EventsController < ApplicationController

  # der articles controller übernimmt automatisch das layout,
  # der comment controller nicht
  # daher muss man hier das layout extra integrieren
  layout "calendars"

    def create
    @calendar = Calendar.find(params[:calendar_id])
    # @article.comments.create(:body => params[:comment][:body])
    # stattdessen kann man aber auch das verwenden:
    # @article.comments.create(params[:comment]) stellt schon den 
    # Kommentar mit funktionierendem edit dar
  
    # besser bei kurzen Kommentaren:
    @event = @calendar.events.build(params[:event])
  
    # in verbindung mit .build muss immer ein .save erfolgen
    # anders bei .create - dann wird beides innerhalb einer Methode generiert
  
    # wenn speichern erfolgreich:
    if @event.save
	  flash[:notice] = "Comment was successfully created!"
      redirect_to calendar_path(@calendar)
    # wenn nicht gespeichert werden kann:
    else
      # render :action => 'new'
	  # kürzer:
	  render 'new'
    end
  end
  
end
