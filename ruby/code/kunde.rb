class Kunde
	
	attr_accessor :name
	attr_accessor :vorname
	attr_accessor :adresse

	def initialize(name, adresse='')
		@name = name
		@adresse = adresse
		@kunden = []
	end

	def kunde (pvorname)
		@vorname = pvorname	
	end

	def add_kunde(kunde)
		@kunden << kunde
	end

	def bericht
		puts "#{@name}"
		@kunden.each do |kunde|
			puts kunde
		end
	end

# # def firstname=(pfirstname) 
	# # 	@firstname = 	pfirstname
	# # end
	# attr_writer :firstname
	attr_accessor :firstname

	# # def street=(pstreet) 
	# # 	@street = pstreet	
	# # end
	# attr_writer :street
	attr_accessor :street

	# # def city=(pcity) 
	# # 	@city = 	pcity
	# # end
	# attr_writer :city
	attr_accessor :city


end
