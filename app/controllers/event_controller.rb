class EventController < ApplicationController
    
    def index
        redirect_to root_path
    end
    
    def home
        @attendance = Attendance.all
        @event = Event.all
        @person = Person.all
    end
    
    def show
        begin
            @event = Event.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to root_path
        end
        @attendees = Person.joins(:attendances).where(attendances: {event_id: params[:id]})
        respond_to do |format|
            format.html
            format.json { render json: {"Event":@event.as_json, "Attendees":@attendees.as_json}}
        end
    end
    
    
    private
        def event_params
            params.require(:event).permit(:id)
        end
end
