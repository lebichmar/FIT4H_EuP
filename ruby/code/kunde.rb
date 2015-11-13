class Kunde
	
	attr_accessor :name
	attr_writer :adresse
	attr_accessor :gehalt

	def initialize(name, adresse='')
		@name = name
		@adresse = adresse
	end

	def add_kunde(kunde)
		@kunden<<kunde
	end

	def kunde_ausgabe									#hier werden keine Variablen übergeben, da Instanzvariablen
		"Kunde:  #{@name}, #{@adresse}"
	end

	def alle_kunden
		puts "#{@name}'s PLAYLIST"
		@kunden.each do |kunde|
			puts kunde
		end
	end

	

	def bericht
		puts "Test"
		@kunden.each do |kunde|
			puts kunde
		end
	end


end
