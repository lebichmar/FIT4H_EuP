class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
				@event = Event.find(params[:id])			#globale Parameter (sind alle enthalten)
	end


end
