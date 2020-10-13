# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return "" if my_sentence.nil? || my_sentence.empty?
  new_sentence = my_sentence.split(' ') #makes copy

  length = new_sentence.length

    i = 0
    last_val = length - 1

    while i < last_val
      temp = new_sentence[i]
      new_sentence[i] = new_sentence[last_val]
      new_sentence[last_val] = temp
      i += 1
      last_val -= 1
    end
    new_sentence = new_sentence.join(' ')
    return my_sentence.replace(new_sentence)
end


