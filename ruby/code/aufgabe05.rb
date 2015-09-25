class Player
	
	attr_reader :health
	attr_accessor :score

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth

	end

	def to_s								#hier werden keine Variablen übergeben, da Instanzvariablen

	"Mein Name ist #{@name} mit einem Wert #{@health} um #{time} mit einem Wert von #{score}."

	end

	def blamed
		@health -= 10
		puts "#{@name} wurde geblamt!!! Aktueller Stand: #{@health}"
	end
	
	def w00t
		@health += 10
		puts "#{@name} wurde gewootet!!! Aktueller Stand: #{@health}."

	end

	def time
		Time.new.strftime("%R")
	end


	def score
		@score + @name.length
	end

end



player1 = Player.new('Martin', 80)
player2 = Player.new('Micha')
players = [player1, player2]

players.each do |var|
	var.blamed
	puts var
end

players.size.times do |i| 			#Alternative zur obigen Version ("each do")
	puts i.to_s
	puts players[i]
end


