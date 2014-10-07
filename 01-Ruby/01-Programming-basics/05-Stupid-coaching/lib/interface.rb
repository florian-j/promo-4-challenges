require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Message à votre coach"
your_message = gets.chomp

until your_message == "I am going to work right now!"
  coach_answer(your_message)
  your_message = gets.chomp
end
