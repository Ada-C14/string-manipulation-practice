# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  last = my_sentence.length
  num_words = count_words(my_sentence)

  space_index = (my_sentence =~ /\s/)

  first_word = (0...space_index)
  next_word = (space_index..last)
  first_word_assignment = (0...space_index)
  next_word_assignment = (space_index..last)
  p space_index

  my_sentence[first_word], my_sentence[next_word] = my_sentence[next_word_assignment], my_sentence[first_word]
  p my_sentence

  my_sentence = my_sentence.join(' ')

  return my_sentence.object_id
end

def count_words(sentence)
  return sentence.split.length
end



# ###not reversing in-place....
# def reverse_sentence(my_sentence)
#   #insertion sort
#   my_sentence = my_sentence.split
#   i = 0
#   j = my_sentence.length - 1
#   while i <= j
#     temp = my_sentence[i]
#     my_sentence[i] = my_sentence[j]
#     my_sentence[j] = temp
#     j -= 1
#     i += 1
#   end
#   my_sentence = my_sentence.join(' ')
#   return my_sentence
# end


####not reversing in-place....
# def reverse_sentence(my_sentence)
#   #insertion sort
#   my_sentence = my_sentence.split
#   i = 0
#   j = my_sentence.length - 1
#   while i <= j
#     my_sentence[i], my_sentence[j] = my_sentence[j], my_sentence[i]
#     j -= 1
#     i += 1
#   end
#   my_sentence = my_sentence.join(' ')
#
#   return my_sentence.object_id
# end
