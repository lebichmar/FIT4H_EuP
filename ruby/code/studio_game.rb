system "clear"

name1 = "larry"
name2 = "curly"
name3 = "moe"

health = 60
faktor = 3
divisor = 9

puts name1 + "'s health is " + health.to_s + "."	+ "\t\t\t\#Version1"
puts "#{name1}'s health is #{health}.\t\t\t\#Version2\n\n"

puts "#{name1}'s health is #{ergebnis = faktor*health}.\t\t\t\#Faktor3"

puts "#{name1}'s health is #{ergebnis/divisor}.\t\t\t\#Divisor9"

puts "\nPlayers:\n\t#{name1}\n\t#{name2}\n\t#{name3}\n\n."




