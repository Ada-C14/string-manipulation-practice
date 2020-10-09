# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

# do i need a helper method to find the length of a string?
def sort_by_length(my_sentence)
  my_sentence = my_sentence.split(" ")                        # Time: O(1), Space: O(n)
  # implementing bubble sort
  i = 0                                                       # Time: O(1), Space: O(1)
  while i < my_sentence.length - 1                            # Time: O(n)
    j = 0                                                     # Time: O(1), Space: O(1)
    while j < my_sentence.length - i - 1                      # Time: O(n)
      if my_sentence[j].length > my_sentence[j+1].length
        temp = my_sentence[j+1]                               # Space: O(1)
        my_sentence[j+1] = my_sentence[j]
        my_sentence[j] = temp
      end
      j += 1
    end
    i += 1
  end
  return my_sentence
end



