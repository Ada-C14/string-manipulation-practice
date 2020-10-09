# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

reverse_sentence(test_string)

test_string = "Yoda is awesome!"
# "awesome! is Yoda"

# "Yoda   is    awesome"
# "awesome    is   Yoda"

# "How  do  you   like     them      apples?"
# "apples?      them     like   you  do  How"

# "  I can do this!     "
# "     this! do can I  "

def reverse_sentence(my_sentence)
  puts my_sentence.object_id
  my_sentence = my_sentence.split(/(\W)/)
  puts my_sentence.object_id
  length = my_sentence.length
  i = 0
  while i < length
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[length-1]
    my_sentence[length-1] = temp
    i += 1
    length -= 1
  end
  return my_sentence.join("")
end

# def reverse_sentence(my_sentence)
#   length = my_sentence.length
#   broken_sentence = my_sentence.split(/(\W)/)
#   my_sentence.length-1.times do |i|
#     puts i
#     my_sentence[i] = broken_sentence[length-1]
#   end
#   return my_sentence
# end


#   puts my_sentence.object_id
#   length = my_sentence.length
#   i = 0
#   while i < length
#     temp = my_sentence[i]
#     my_sentence[i] = my_sentence[length-1]
#     my_sentence[length-1] = temp
#     i += 1
#     length -= 1
#   end
#   return my_sentence.join("")
# end





