require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
puts " what do you want to tell to your coach ?"
answer = gets.chomp

until answer == "i'm going to work right now SIR !"

puts coach_answer(answer)
puts "posez une question à votre coach"
answer = get.chomp
end