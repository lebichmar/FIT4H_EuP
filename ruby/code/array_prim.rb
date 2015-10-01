
# # require "prime"
# # arrayprim = Prime.first 10

# arrayprim = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
# #puts arrayprim

# arrayprim.each do |p|
# 	if p < 10
# 	 puts " #{p} ist einstellig"
# 	else
# 		puts "#{p} ist einstellig"
# end
# end

#################################################################

# # require "prime"
# # arrayprim = Prime.first 10

# arrayprim = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
# #puts arrayprim

# arrayprim.each do |p|
# 	if p.to_s.length < 2
# 	 puts " #{p} ist einstellig"
# 	elsif p.to_s.length <3 && p.to_s.length >1
# 		puts "#{p} ist zweistellig"
# end
# end

##################################################################

# # require "prime"
# # arrayprim = Prime.first 10

# arrayprim2 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
# #puts arrayprim2

# words = ["leer", "ein", "zwei"]
# 10.times.do |var3|
# 	puts "#{arrayprim2[var3]} ist #{words[arrayprim2[var3]]}stellig"
# end


systen = "clear"

# require "prime"
# arrayprim = Prime.first 10

prims = Hash.new
arrayprim = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

arrayprim.each do |p|
	prims[p] = p.to_s.length < 2 ? "ist einstellig" : "ist zweistellig"
end

puts prims


prims.sort_by { |word| word.length}
puts prims
