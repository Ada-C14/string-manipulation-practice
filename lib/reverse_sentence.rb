# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n) the method below does not sort in place (.split makes a copy of the original string). The array gets bigger as the input is entered
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
    new_sentence = new_sentence.join(' ') #only adds one space in between each word. Need to come back to this
    return my_sentence.replace(new_sentence)
end


