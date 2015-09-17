##################################################################################
# def say_hello(name, health=100)

# 	puts "Hallo ich bin #{name}."

# end

#say_hello('Ludwig', 75)

##################################################################################

# def say_hello(name, health=100)

# 	"Hallo ich bin #{name} mit dem Wert #{health} um #{Time.now.strftime("%H:%M")}"

# end

#puts say_hello('Ludwig2', 75)

###################################################################################
# def say_hello(name, health=100)

# 	"Hallo ich bin #{name} mit dem Wert #{health} um #{time}."

# end


# def time
#		Time.new.strftime(%R)
# end
#
#puts say_hello('Ludwig3')


##################################################################################

class Player
	

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth

	end

	def say_hello						#hier werden keine Variablen übergeben, da Instanzvariablen

	"Mein Name ist #{@name} mit einem Wert #{@health} um #{time}"

	end

	def blamed
		@health -= 10
		puts "#{@name} wurde geblamt!!! Aktueller Stand: #{@health}"
	end
	
	def w00t
		@health += 10
		puts "#{@name} wurde gewootet!!! Aktueller Stand: #{@health}"

	end

	def time
		Time.new.strftime("%R")
	end

end


	
player1 = Player.new 								#ObjektID wird angezeigt
puts player1												#Die Methode puts ist immer vorhanden, da sie eine Kernelklasse ist
																		#Statt puts ist es besser to_s anzuwenden. Da kein puts in der Klasse gefunden werden
																		#kann, wird auf eine Standardmethode, die beim Erstellen der Klasse erzeugt wird, zurückgegriffen

player1 = Player.new('Martin', 80) 	
puts player1												#ObjektID wird angezeigt



player1 = Player.new('Martin', 80)
puts player1.say_hello
player2 = Player.new('Micha')
puts player2.say_hello

player2.w00t
player1.blamed

# #Aufgabe i)

# #innerhalb der Klasse muss die Methode "say_hello" in to_s umbenannt werden

# #ungünstigere Variante
# players = "#{player1.say_hello}\n#{player2.say_hello}"
# puts players