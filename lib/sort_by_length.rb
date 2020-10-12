# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split(" ")
  sentence_array.length.times do
    i = 0
    sentence_array.each do |string|
      if string.length > sentence_array[i + 1].length
        sentence_array[i], sentence_array[i + 1] = sentence_array[i + 1], sentence_array[i]
      end
      i += 1 if i < sentence_array.length - 2
    end
  end
  return sentence_array

end
