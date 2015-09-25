# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres # Array mit dem Name Player enthaelt.

class Player 	###############################################################################
	attr_reader :health
	attr_accessor :score, :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
		@score = ''
		@players =[]
	end

	def add_player(player)
		@players << player
	end

	def to_s								#hier werden keine Variablen übergeben, da Instanzvariablen
	"Mein Name ist #{@name} mit einem Wert #{@health} um #{time} mit einem Wert von #{score}."
	end

	def blamed
		@health -= 20
		puts "#{@name} got blamed!!!"
	end
	
	def w00ted
		@health += 20
		puts "#{@name} got wooted!!!"
	end

	def time
		Time.new.strftime("%R")
	end

	def score
		@score + @name.length.to_s
	end
end 					##############################################################################

class Game 		##############################################################################
	def initialize(title)
		@title = title
		@game_players =[]
	end

	def add_player(player)
		puts player 							#Zu Debug-Zwecken/Kontrolle kann man sich den player ausgeben 
		@game_players << player
		puts @game_players 				#Zu Debug-Zwecken/Kontrolle kann man sich das Array ausgeben
	end

	def play
		puts "There are #{to_s} players in #{@title}:"
		@game_players.each do |player|									#|player| ist eine lokale Variable
			puts "I'am #{player.name} with a health of #{player.health} and a score of #{player.score}."
		end
	end

	def to_s
		@game_players.size.to_s
	end
end 					##############################################################################

puts "\n"

player1 = Player.new('Moe', 100)
player2 = Player.new('Larry', 60)
player3 = Player.new('Curly', 125)
players = [player1, player2, player3]


game1 = Game.new("Freaky Friday")

game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)

game1.play

# player1.blamed
# player1.w00ted
# player1.w00ted
# puts player1.to_s

# player2.blamed
# player2.w00ted
# player2.w00ted
# puts player2.to_s

# player3.blamed
# player3.w00ted
# player3.w00ted
# puts player3.to_s

players.each do |player|
	player.blamed
	player.w00ted
	player.w00ted
	puts player.to_s
end

puts "\n"


# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:
# 	There are 3 players in Knuckleheads: 
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.