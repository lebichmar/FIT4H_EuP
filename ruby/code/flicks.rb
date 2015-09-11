# #Tastenkombination STRG+Umsch+7 kommentiert alles markierte aus


# ##################################################
# def movie_listing
# 	puts "Movie: Ninja Mutant Hero Turtles"
# end

# movie_listing

# ##################################################

# #ODER

# def movie_listing
# 	"Movie: Ninja Mutant Hero Turtles"
# end

# puts movie_listing

# ##################################################

# #ODER

# def movie_listing
# 	puts "Movie: Ninja Mutant Hero Turtles"
# 	"Movie: SWAT"
# end

# var = movie_listing
# puts "Rückgabewert #{var}"

# ###################################################
# def movie_listing
# 	var  = "Movie: Ninja Mutant Hero Turtles"
# 	puts "var innerhalb Methode: #{var.object_id}"
# 	var2 = "Movie: SWAT"
# 	"#{var}\n#{var2}"
# end

# var = movie_listing
# puts "var ausserhalb: #{var.object_id}"
# puts "Rückgabewert #{var}"

# ####################################################

# def movie_listing(title)
# 	"Movie: film"
# end

# puts movie_listing("Ninja Turtles")
# puts movie_listing("SWAT")

# ####################################################

# def movie_listing(title)
# 	"Movie: #{title.downcase.capitalize}"
# end

# puts movie_listing("Ninja Turtles")
# puts movie_listing("SWAT")

# ####################################################

# def movie_listing(title, rank=10)
# 	"Movie: #{title.downcase.capitalize} hat das Ranking #{rank}"
# end

# puts movie_listing("Ninja Turtles",4)
# puts movie_listing("SWAT", 3)

# ####################################################

# class Movie
# 		def initialize(ptitle, prank=0)	
# 			@title = ptitle.capitalize
# 			@rank  = prank
# 		end


# 		def thumps_up
# 			@rank+= 1
# 			#@rank = @rank + 1
# 		end

# 		def thumps_up
# 			@rank-= 1
# 			#@rank = @rank - 1
# 		end

# 		def to_s
# 			"#{@title} hat ein Ranking von: #{@rank}."
# 		end


# 	end
	

# 	obj_movie1 = Movie.new('TMNT', 4)
# 	puts obj_movie1.to_S
	
# 	obj_movie1.thumps_up
# 	puts obj_movie1.to_S

# 	#####################################################
