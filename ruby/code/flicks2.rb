class Movie
	
	attr_accessor :title			#Kurzform von attr_writer/reader

		# def title
		# 	@title
		# end
		
		# def title=(ptitle)
		# 	@title = ptitle
		# end

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
	

	movie1 = Movie.new('TMNT', 4)
	movie2 = Movie.new('MIB3', 3)
	movie3 = Movie.new('LOTR', 2)
	
	movies = [movie1, movie2, movie3]
	movies.each do |movie|
		movie.thumps_up
		#movie.thumps_down
		puts movie
	end

######################################################
