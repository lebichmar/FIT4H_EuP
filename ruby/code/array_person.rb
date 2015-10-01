#b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt.

# person_hash = { :vorname    	=> 'Theo',
#            			:nachname   	=> 'Sommer',
#            			:stadt 				=> 'Lodz'}
# person_hash.each	do |key, val|
# 	puts "#{key.capitalize}: #{val}\n"
# end

#ODER


# person_hash = { vorname: 'Theo',nachname: 'Sommer',stadt: 'Lodz'}
# person_hash.each	do |key, val|
# 	puts "#{key.capitalize}: #{val}\n"
# end

###############################################################################################

person_hash = { vorname: 'Theo',nachname: 'Sommer',stadt: 'Lodz'}
adressen = [person_hash]
person_hash = { vorname: 'Peter',nachname: 'Pan',stadt: 'New York'}
person_hash = { vorname: 'Ludmilla',nachname: 'Szenui',stadt: 'Hongkong'}
adressen <<person_hash
#puts adressen

i=1
puts "#{adressen[0][:vorname]} #{adressen[1][:nachname]}"
adressen.each do |var|
	puts "#{i.to_s}. Person"
	var.each do |key, val|
		puts "#{key.capitalize}: #{val}\n"
	end
i += 1
end