class Customer
	
	def initialize(pbank_account, plastname="")
		@bank_account = pbank_account
		@lastname = plastname
		
	end

###############SET-Methoden#################
	def set_firstname=(pfirstname) 
		@firstname = 	pfirstname
	end

	def set_street=(pstreet) 
		@street = pstreet	
	end

	def set_city=(pcity) 
		@city = 	pcity
	end
###############SET-Methoden#################

#
#

###############GET-Methoden#################
	def street
		@street
	end

	def city
		@city
	end

	def firstname
		@firstname
	end
###############GET-Methoden#################
	
	def print_address
		puts "-------------------------------------------------\n\n"
		puts 	"#{"Konto:".ljust(20,".")}#{@bank_account}"
		puts 	"#{"Name:".ljust(20,".")}#{@firstname} #{@lastname}"
		puts 	"#{"Strasse:".ljust(20,".")}#{@street}"
		puts 	"#{"Ort:".ljust(20,".")}#{@city}"
	end
	
	

end

##################################################################################

system "clear"

customer1 = Customer.new(1470056008, "Müller")
customer1.set_street = "Musterstrasse 99"
customer1.set_city = "Musterhausen"
customer1.set_firstname = "Hans"

puts customer1.firstname

#puts customer1.print_address





	
