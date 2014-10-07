require_relative "compute_name"

puts "Your first name ?"
first_name = gets.chomp

puts "Your Middle name?"
middle_name = gets.chomp

puts "Your last name?"
last_name = gets.chomp

puts "Hello, #{compute_name(first_name, middle_name, last_name)} !"



# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

