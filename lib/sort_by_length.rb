# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n)
# Space complexity: O(1)
#
# interpretation of selection sort using .delete
#
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")

  sorted_array = []

  until array.length == 0
    min_word = array.min_by { |word| word.length }
    sorted_array << min_word
    array.delete(min_word)
  end

  return sorted_array
end
