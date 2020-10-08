# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return "" if my_sentence.nil?
  my_array = my_sentence.split(/\s/)
    i = 0
    j = my_array.length - 1

    while i < j
      temp = my_array[i]
      my_array[i] = my_array[j]
      my_array[j] = temp

      i += 1
      j -= 1
    end

  return my_array.join(' ')
end


