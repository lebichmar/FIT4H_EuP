class Event < ActiveRecord::Base

validates :name, presence: true

	def free?
		self.price.blank? || self.price.zero?								#nimm das aktuelle Objekt	

	end

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")							#nimm das aktuelle Objekt	
	end



	
end

