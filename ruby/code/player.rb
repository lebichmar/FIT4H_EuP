class Player
	attr_reader :health
	attr_accessor :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!!"
	end
	def w00t
		@health += 10
		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}"
	end

	def score
		@health + @name.length
	end


	# In der player_spec muss also zuerst ein Kontext geschaffen werden, in der die Methode strong? abgefragt wird.
	# Ist die eigenschaft health > 100, dann ist der Spieler strong, andernfalls wimpy.
def strong?
		if @health > 100
			true
		else
			false
		end
	end

def player_spec
		if strong?
			"strong"
		else
			"wimpy"
		end
	end

end