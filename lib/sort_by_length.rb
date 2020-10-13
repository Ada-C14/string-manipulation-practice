# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  return [] if my_sentence.empty?

  words = my_sentence.split(" ")
  length = words.length
  i = 0

  #bubble sort
  while i < length
    swapped = true

    while i < length - 1 && swapped
      j = 0
      swapped = false
      while j < (length - i - 1)
        if words[j].length > words[j + 1].length
          temp = words[j]
          words[j] =  words[j + 1]
          words[j + 1] = temp
          swapped = true
        end
        j += 1
      end
      i += 1
    end
  end
  words
end