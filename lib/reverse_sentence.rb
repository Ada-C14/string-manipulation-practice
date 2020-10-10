# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  # \s -  Any whitespace character (space, tab, newline)
  new_sentence = my_sentence.split(/(\s)/)
  # puts my_sentence.object_id
  length = new_sentence.length
  i = 0
  while i < length
    temp = new_sentence[i]
    new_sentence[i] = new_sentence[length-1]
    new_sentence[length-1] = temp
    i += 1
    length -= 1
  end
  return my_sentence.replace(new_sentence.join(""))
end