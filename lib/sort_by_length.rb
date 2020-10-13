# frozen_string_literal: true

# A method which will return an array of the words in the string
#  sorted by the length of the word.
# my sentence is now like this => [i love Ada]
# I need to find the largest first
# I need to hold the current variable
def find_smallest_position(array)
  smallest = array[0]
  smallest_position = 0
  array.each_with_index do |word, i|
    if word.length < smallest.length
      smallest = word
      smallest_position = i
    end
  end
  return smallest_position
end

def sort_by_length(my_sentence)
  sentence_array = my_sentence.split(' ')
  
  sorted_array = []
  
  # While there are still unsorted words...
  while sentence_array.length > 0
    # Find the smalled word
    # Using a helper method, find the smallest word in the sentence array => return the position[index], not the element in the array
    smallest_position = find_smallest_position(sentence_array)

    # Remove the smallest word from the unsorted list
    smallest_word = sentence_array.delete_at(smallest_position)

    # Add the smallest word to the sorted list
    sorted_array << smallest_word
  end
  #return the sorted array
  return sorted_array
end


