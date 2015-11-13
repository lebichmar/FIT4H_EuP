class Event < ActiveRecord::Base

	def free?
		self.price.blank? || self.price.zero?								#nimm das aktuelle Objekt	

	end


end

