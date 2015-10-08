class Movie
	
	attr_accessor :title 
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end

	def hit?
		if @rank >= 10
			true
		else
			false
		end
	end
	
	# def hit?			#Kurzform
	# 	@rank >= 10
	# end

	def status
		if hit?
			"Hit"
		else
			"Flop"
		end
	end

	# def status 			#Kurzform
	# 	hit? ? "Hit" : "Flop"
	# end			
		
	def thumbs_up
		@rank += 1
	end
	
	def thumbs_down
		@rank -= 1
	end
	
	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end

end
