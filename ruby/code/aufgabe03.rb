class Customer
	
	def initialize(pbank_account, plastname="")
		@bank_account = pbank_account
		@lastname = plastname
		
	end

###############SET-Methoden#################
	# # def firstname=(pfirstname) 
	# # 	@firstname = 	pfirstname
	# # end
	# attr_writer :firstname
	attr_accessor :firstname

	# # def set_street=(pstreet) 
	# # 	@street = pstreet	
	# # end
	# attr_writer :street
	attr_accessor :street

	# # def set_city=(pcity) 
	# # 	@city = 	pcity
	# # end
	# attr_writer :city
	attr_accessor :city
###############SET-Methoden#################

#
#

###############GET-Methoden#################
	# def street
	# 	@street
	# end


	# def city
	# 	@city
	# end


	# def firstname
	# 	@firstname
	# end

###############GET-Methoden#################
	
	def print_address
		puts "**Kundeninformation**-------------------------------\n\n"
		puts 	"#{"Konto:".ljust(20,".")}#{@bank_account}"
		puts 	"#{"Name:".ljust(20,".")}#{@firstname} #{@lastname}"
		puts 	"#{"Strasse:".ljust(20,".")}#{@street}"
		puts 	"#{"Ort:".ljust(20,".")}#{@city}"
	end
	
	

end

##################################################################################

system "clear"

customer1 = Customer.new(1470056008, "Müller")
customer1.street = "Musterstrasse 99"
customer1.city = "Musterhausen"
customer1.firstname = "Hans"

#puts customer1.firstname

puts customer1.print_address





	
