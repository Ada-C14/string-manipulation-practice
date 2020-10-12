# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  # split up the sentence and place the words in an array
  # include the spaces
  array = my_sentence.split(/(\s+)/)

  i = 0
  j = array.length - 1

  until i > j
    temp = array[i]
    array[i] = array[j]
    array[j] = temp

    i += 1
    j -= 1
  end

  return array
end

