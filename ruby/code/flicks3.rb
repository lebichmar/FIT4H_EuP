class Playlist
	
	def initialize(pnameplaylist)								#pnameplaylist ist eine lokale Variable
		@nameplaylist = pnameplaylist							#nameplaylist ist eine Instanzvariable
		@movies = []											
	end

	def add_movie(movie)
		@movies << movie
	end

	def play
	puts "#{@nameplaylist}'s Playlist"
		@movies.each do |movie|
			puts movie
		end
	end

	def to_s
		@movies.size.to_s
	end


end




class Movie
	
	attr_accessor :title			#Kurzform von attr_writer/reader

	def initialize(ptitle, prank=0)	
		@title = ptitle.capitalize
		@rank  = prank
	end

		
		

	def thumps_up
		@rank+= 1
		#@rank = @rank + 1
	end

	def thumps_down
		@rank-= 1
		#@rank = @rank - 1
	end

	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end


end
	
	system = "clear"

	movie1 = Movie.new('TMNT', 4)
	movie2 = Movie.new('MIB3', 3)
	movie3 = Movie.new('LOTR', 2)
	
	pl = Playlist.new("Theo")
	pl.add_movie(movie1)
	pl.add_movie(movie2)
	pl.play

######################################################
