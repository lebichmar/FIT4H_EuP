# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# liste = %w(Pflaume Bauschaum Auster)

# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
# var = liste.select do |a|
# 			a.downcase.include?("aus")
# 			end

# puts	var	

#oder

# liste = %w(Pflaume Bauschaum Auster)
# var = liste.select do |a|
# 			a.include?("aus") || a.include?("Aus")
# 			end

# puts	var	

#oder

# liste.each do |a|
# 	if a.downcase["aus"] == 'aus'
# 		puts a
# 	end
# end

# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
liste = %w(Pflaume Bauschaum Auster)
sortiert = liste.sort_by do |a|
	a.length
end

puts sortiert

#oder

puts liste.sort_by { |s| s.length}


# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert
myhash = Hash.new
liste.each do |l|
	myhash[l] = l.length
end
puts myhash





