def shuffle_word(a_word)
  # TODO: refactor this method
  a_word.upcase.chars.to_a.shuffle
end

# a = shuffle_word("florian")

# puts a

def quote_prime_numbers(n)
  # TODO: refactor this method
  (1..n).select {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}

  # prime_numbers = (1..n).select {|i| (2..i-1).select {|k| i % k == 0 }}.count == 0

  # prime_numbers.map {|prime_num| "#{prime_num} is prime"}

end

a = quote_prime_numbers(10)

puts a