class RegistrationsController < ApplicationController

def index
	@event = Event.find(params[:event_id])
	@registrations = @event.registrations
end

def new
	@event = @event.registrations.new

end

def create
	@registration = @event.registration.new(registration_params)
	if @registration.save
		#flash[:notice] = "Registrierung erfolgreich"
		redirect_to event_path(@event.id), alert: "Registrierung erfolgreich"
	else
		flash.alert 
		render "new"
	end
end


private
	def registration_params
		params.require(:registration).permit(:name, :email, :how_heard)
	end

	def set_event
		@event = Event.find(params[:event_id])
	end

end
