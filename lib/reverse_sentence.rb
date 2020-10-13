# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
   if my_sentence == nil
      return nil
    end
    new_sentence = my_sentence.split(/(\s+)/)
    reversed = []
    loop do
      reversed << new_sentence.pop
      break if new_sentence.empty?
    end
     my_sentence.replace reversed.join("")
end


#
#  if my_sentence == nil
#     return nil
#   end
#   # new_sentence = my_sentence.split(" ")
#   # new_sentence = my_sentence.split("")
#
#   new_sentence = split_word(my_sentence)
#
#   reversed = []
#   loop do
#     reversed << new_sentence.pop
#     break if new_sentence.empty?
#   end
#   # my_sentence = reversed.join" "
#    my_sentence.replace reversed.join ""