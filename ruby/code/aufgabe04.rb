class Calculator
	
	def initialize(pzahl1, pzahl2=0)				#Konstruktor 
		@zahl1=pzahl1
		@zahl2=pzahl2													#Instanzvariable
	end

	def add
		@add=@zahl1+@zahl2
		puts "Das Ergebnis der Addition lautet: #{@add}."
	end

	def sub
		@sub=@zahl1-@zahl2
		puts "Das Ergebnis der Subtraktion lautet: #{@sub}."
	end

	def mult
		@mult=@zahl1*@zahl2
		puts "Das Ergebnis der Multiplikation lautet: #{@mult}."
	end

	def div
		@sub=@zahl1/@zahl2
		puts "Das Ergebnis der Division lautet: #{@div}."
	end

attr_accessor :zahl1

end

system="clear"
obj_eins=Calculator.new(25,25)
obj_eins.add
obj_eins.sub
obj_eins.zahl1=35
obj_eins.add



