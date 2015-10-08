class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)									
		@movies << movie
	end

	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			case roll_die
				when 1..2
					movie.thumps_down
					puts "#{movie.title} wurde gedownt."
				when 3..4
					puts "#{movie.title} wurde nix gemacht."
				else
					movie.thumps_up
					puts "#{movie.title} wurde geuppt."
			end
				
			puts movie
		end
	end

	def roll_die
		rand(1..6)
	end

	def to_s
		@movies.size.to_s
	end

end