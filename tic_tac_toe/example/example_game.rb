root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"

puts "Welcome to tic tac toe"
puts "Player 1: Enter your name"
player1_name = gets.chomp
player1_color = ""
until player1_color == "X" || player1_color == "O"
	puts "#{player1_name}: Choose noughts or crosses (enter 'O' or 'X')"
	player1_color = gets.chomp
end
puts "Player 2: Enter your name"
player2_name = gets.chomp
player2_color = ""
if player1_color == "X"
	player2_color = "O"
else
  player2_color = "X"
end
puts "#{player2_name}: #{player1_name} has chosen to play as '#{player1_color}', you will play as '#{player2_color}'"

player1 = TicTacToe::Player.new({color: player1_color, name: player1_name})
player2 = TicTacToe::Player.new({color: player2_color, name: player2_name})
players = [player1, player2]
TicTacToe::Game.new(players).play