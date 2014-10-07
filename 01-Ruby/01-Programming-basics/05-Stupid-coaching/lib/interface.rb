require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Message à votre coach"

your_message = gets.chomp

until your_message == ""
  puts coach_answer_enhanced(your_message)
  your_message = gets.chomp
end
