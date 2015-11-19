class Movie < ActiveRecord::Base
	
	def flop?
		self.total_gross.blank? || self.total_gross < 50000000
	end
 
 	def self.past
		where("released_on < ?", Time.now).order("released_on")							#nimm das aktuelle Objekt	
	end

end
