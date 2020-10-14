# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)?
# Space complexity: O(n)?
def sort_by_length(my_sentence)
  my_sentence_array = my_sentence.split(/\W+/)
  length = my_sentence_array.length

  return [] if my_sentence_array.empty?

  counter = 0
  while counter < length
    inner_counter = 0
    while inner_counter < length - 1
      if my_sentence_array[inner_counter].length > my_sentence_array[inner_counter + 1].length
        temp_array = my_sentence_array[inner_counter]
        my_sentence_array[inner_counter] = my_sentence_array[inner_counter + 1]
        my_sentence_array[inner_counter + 1] = temp_array
      end
      inner_counter += 1
    end
    counter += 1
  end
  return my_sentence_array
end
