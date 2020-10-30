# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  my_sentence = my_sentence.chars

  counter = 0
  reversed = []
  while counter < my_sentence.length
    reversed << my_sentence[my_sentence.length - 1 - counter]
    counter += 1
  end

  return reversed
end
