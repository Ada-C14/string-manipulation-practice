# frozen_string_literal: true

# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?

my_sentence = 'I love Ada'
#
# def sort_by_length(my_sentence)
#   return [] if my_sentence.empty?
#
#   array_sentence = my_sentence.split
#   sorted_array = []
#
#   until array_sentence.empty?
#     shortest_word_length = nil
#
#     array_sentence.each do |word|
#       # Set shortest_word_length to word.length at index 0
#       if shortest_word_length.nil?
#         shortest_word_length = word.length
#       end
#
#       shortest_word_length = word.length if word.length < shortest_word_length
#     end
#
#     array_sentence.each_with_index do |word, i|
#       next unless word.length == shortest_word_length
#
#       sorted_array << word
#       array_sentence.delete_at(i)
#       break
#
#     end
#
#   end
#
#   return sorted_array
# end
#
# sort_by_length(my_sentence)

def sort_by_length(my_sentence)
  return [] if my_sentence.empty?

  array_sentence = my_sentence.split
  # sorted_array = []

  until array_sentence.empty?
    array_sentence.each do |index| # outer loop - n elements
      min_index = index # assume index is where the next minimally value is
      temp_index = index + 1 # compare with values at index+1 to length-1
      while temp_index < array_sentence.length # inner loop - n-1 elements
        if array_sentence[temp_index] < array_sentence[min_index]
          min_index = temp_index
        end # found a new minimum, update min_index
        temp_index += 1 # move to next index
      end
      next unless min_index != index # next minimum value is not at current index, swap

      temp = array_sentence[min_index]
      array_sentence[min_index] = array_sentence[index]
      array_sentence[index] = temp
    end
  end
  return array_sentence
end
