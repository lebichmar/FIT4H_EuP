# 3. Lottogenerator:
# a. Schreiben Sie einen kleinen Lottozahlengenerator. Es sollen 7 Zahlen aus 49 Möglichkeiten in einem Array ausgegeben werden.
lotto =[]
7.times do 
	z = rand(1..49)
	while lotto.include?(z)
		z = rand(1..49)
	end
	lotto << z
end

#puts lotto.sort

puts lotto2 = (1..49).to_a.sample(7).sort	



# b. Peter, Paul und Mary bilden einen Hash, etwa derart: lotto = { "Peter" => [ 2,22,33,11,23,32,26 ], ...}

lotto_hash = Hash.new
%w(Peter Paul Mary).each do |vname|
	lotto_hash[vname] = (1..49).to_a.sample(7).sort
end
puts lotto_hash

