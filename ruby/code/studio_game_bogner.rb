require_relative 'game'
require_relative 'player'


player1 = Player.new('Theo', 5)
player2 = Player.new('Peter')
game = Game.new('Freitag')
game.add_player(player1)

#players = [player1, player2]

# players.each do |var|
# 	var.blam
# 	puts var
# end

# players.size.times do |i|
# 	puts i.to_s
# 	puts players[i]
# end