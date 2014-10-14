def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  a_string_sort = a_string.split.sort
  another_string_sort = another_string.split.sort
  if a_string_sort == another_string_sort
    true
  else
    false
  end
end


p anagrams?("abc", "cab")






# def anagrams_on_steroids?(a_string, another_string)
#   # TODO: implement the improved method
# end
