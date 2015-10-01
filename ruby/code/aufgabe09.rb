# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
# array1 = (15..20).to_a
# puts array1

# # a. geben Sie diese Zahlen in einem Block aus
# array1.each do |z|
# 	puts z.to_s
# end

# #ODER

# array1.each {|z| puts z.to_s}

# # b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
# array1.each_with_index do |z, i| 	#in der Methode ist festgelegt, dass z der Wert ist und i der Index
# 	puts "Index: #{i} Wert: #{z}"
# end

# #ODER

# i=0
# array1.size.times do
# 	puts "Index: #{i} - Wert: #{array1[i]}"
# 	i+=1
# end

# # c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
# arrayhash = Hash.new			#Hash muss als erstes erzeugt werden

# array1.each do |val|
# 	arrayhash[val] = rand(100..200)
# end
# puts arrayhash

# # d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
# arrayhash.each do |myKey, myVal|
# 	puts "Index: #{myKey} - Wert: #{myVal}"
# end

# # e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
# arrayhash.each do |myKey, myVal|
# 	if myVal>150
# 		puts "WOW.Index: #{myKey} - Wert: #{myVal}"
# 	else
# 		puts "Index: #{myKey} - Wert: #{myVal}"
# end

# # f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
# arraysquare = Array.new
# array1.each do |val|
# 	arraysquare << val * val
# end
# puts arraysquare

# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
# arrayhash2 = Hash.new
# array1.each do |z|
# 	arrayhash2[z] = z * z
# end
# puts arrayhash2

# Zusatz Zahlen im Array und im Hash:
# a. Legen Sie ein Array an mit 10 Primzahlen. Die Ausgabe des Arrays erzeugt:
# 	1 ist einstellig
# 	3 ist einstellig
# 	...
# 	11 ist zweistellig
#   ...

systen = "clear"

# require "prime"
# arrayprim = Prime.first 10

arrayprim = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
arrayprim2= []
#puts arrayprim

arrayprim.each do |p| |q|
	if p < 10
	
		arrayprim2<< arrayprim[p]
	 	puts " #{p} ist #{p}"
	else
		arrayprim[p][1]
	 	puts " #{p} ist #{p}"
		puts "#{p} ist einstellig"
end
end


# b. Legen Sie zur Übung einen Hash personen an, mit den keys vorname, nachname, stadt und den Werten Theo, Sommer, Lodz. Machen Sie eine Ausgabe, die 'vorname: Theo + neue Zeile' ausgibt
person_hash = { vorname: 'Theo',nachname: 'Sommer',stadt: 'Lodz'}
person_hash.each	do |key, val|
	puts "#{key.capitalize}: #{val}\n"
end


# c. Fortsetzung Aufgabe a: 
# Speichern Sie beim Durchlaufen des Arrays die Werte in einem Hash mit der Bezeichnung prims, sodass die jeweilige Primzahl den Schlüssel bildet und der Wert den Text 'ist einstellig', 'ist zweistellig'

systen = "clear"

# require "prime"
# arrayprim = Prime.first 10
prims = Hash.new
arrayprim = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

arrayprim.each do |p|
	prims[p] = p.to_s.length < 2 ? "ist einstellig" : "ist zweistellig"
end
puts prims

# d. Sortieren Sie den Hash, sodass die Ausgabe folgendermaßen möglich wird:
# Einstellig: 1,3,5 ..
# Zweistellig: 11, 13, ..

prims.sort 
puts prims



# e. Fortsetzung Aufgabe b: 
# Speichern Sie den Hash in dem Array adressen und legen Sie zwei weitere Hashes personen mit den gleichen Keys und anderen Werten an. Durchlaufen Sie das Array, sodass folgende Ausgabe erfolgt.
# 1.Person:
# Name: Theo
# Vorname: Sommer
# Stadt: Lodz
# 2. Person:
# ......

person_hash = { vorname: 'Theo',nachname: 'Sommer',stadt: 'Lodz'}
adressen = [person]
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


# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

# 4. Vergleich:
# str_1 = "Programmieren, Federball, Whisky"
# str_2 = "Fussball, Bier, Programmieren"
# Die Ausgabe lautet:
# ergebnis = { :diff => ["Federball", "Whisky", "Fussball", "Bier"], :match => ["Programmieren"]}
