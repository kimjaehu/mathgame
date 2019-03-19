# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require_relative './build/game'

game = Game.new

puts "===== MATH GAME ====="

## Your test code can go here

game.play

puts "Good bye!"