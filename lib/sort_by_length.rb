# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

def sort_by_length(my_sentence)
  my_sentence = my_sentence.split(" ")                                  # Time: O(1), Space: O(n)
  # implementing bubble sort
  i = 0                                                                 # Time: O(1), Space: O(1)
  while i < find_length(my_sentence) - 1                                # Time: O(n)
    j = 0                                                               # Time: O(1), Space: O(1)
    while j < find_length(my_sentence) - i - 1                          # Time: O(n)
      if find_length(my_sentence[j]) > find_length(my_sentence[j+1])
        temp = my_sentence[j+1]                                         # Space: O(1)
        my_sentence[j+1] = my_sentence[j]
        my_sentence[j] = temp
      end
      j += 1
    end
    i += 1
  end
  return my_sentence
end

def find_length(string)
  length = 0
  until string[length] == nil
    length += 1
  end
  return length
end

