# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n) where n is the length of my_sentence?
# Space complexity: O(n) where n is the the length of my_sentence -- builds aux. array based on n size?
def sort_by_length(my_sentence)
  my_sentence = my_sentence.split
  output_array = []
  my_sentence.length.times do
    smallest_word = my_sentence.min_by { |word| word.length }
    output_array << smallest_word
    my_sentence.delete(smallest_word)
  end
  return output_array
end
