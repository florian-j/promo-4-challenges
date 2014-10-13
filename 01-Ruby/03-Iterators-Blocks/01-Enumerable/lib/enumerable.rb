def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  new_array = []
  array.each_with_index do |num, index|
    if index.odd?
      new_array << num
    end
  end
  new_array.reduce(:+)
end

array_test = [1, 2, 3, 4, 5, 6, 7, 8]

puts sum_odd_indexed(array_test)


def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  new_array = array.select do |num|
    num.even?
  end
end

array_test = [1, 2, 3, 4, 5, 6, 7, 8]

print even_numbers(array_test)

puts ""

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  new_array = array.reject do |name|
    name.length > max_length
  end
end

array_test = ["eau", "terre", "air", "feu"]

puts short_words(array_test, 3)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  new_array = array.find do |n|
    n <= limit
  end
end

array_test = [1, 2, 3, 4, 5, 6, 7, 8]

puts first_under(array_test, 5)

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  new_array = array.map do |name|
    name + "!"
  end
end

array_test = ["eau", "terre", "air", "feu"]

puts add_bang(array_test)

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  product = array.reduce(:*)
end

array_test = [1, 2, 3, 4, 5, 6, 7, 8]

puts product(array_test)

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  new_array = []
  array.each_slice(2) do |name|
  new_array << name.sort
  end
 new_array
end

array_test = ["eau", "terre", "air", "feu"]

puts sorted_pairs(array_test)
