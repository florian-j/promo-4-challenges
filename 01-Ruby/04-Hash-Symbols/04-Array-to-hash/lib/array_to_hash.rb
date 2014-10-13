def array_to_hash(array)
  #TODO: implement the method :)
  hash = {}
    if block_given?
      array.each_with_index do |index, valeur|


  array.each_with_index do |index, valeur|

end

puts array_to_hash(["a", "b", "c"])

  my_hash = {}
   if block_given?
     array.each_with_index do |value,ind|
       my_hash[yield(ind)] = array[ind]
       #yield(ind)
     end
   else
     array.each_with_index do |value, ind|
     my_hash[ind] = value
     end
   end
   my_hash
  end


test = array_to_hash(["a","b","c"]) do |ind|
 "key#{ind+1}"
end

#hash = {0 => "a", 1 => "b", 2 => "c"}