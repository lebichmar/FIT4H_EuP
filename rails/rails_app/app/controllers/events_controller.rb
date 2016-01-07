class EventsController < ApplicationController

	def index
		@events = Event.upcoming
	end

	def showall			#macht man in der realen Applikation NICHT so!!
		@events = Event.all
	end


	def show
		@event = Event.find(params[:id])			#globale Parameter (sind alle enthalten)
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		#man muss Parameter erlauben (Sicherheitsaspekt)
		if @event.update(event_params)
			redirect_to event_path(@event.id)
		else
			render "edit"
		end
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "Ihre Daten wurden gespeichert."
			redirect_to event_path(@event.id)
		else
			render "new"
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url

	end

	private 
		def event_params
		params.require(:event).permit(:name, :location, :description, :price, :start_at, :image_file, :capacity)		
		end

	
end
