class User < ActiveRecord::Base
  has_secure_password


  def self.authenticate(email, password)	#Klassenmethode, die 
  	user = User.find_by(:email => email)	#Suchen des Users anhand des email-Feldes
  	user && user.authenticate(password)		#user-Datensatz wird mit dem entschlüsselten Pw verglichen
  end
end
