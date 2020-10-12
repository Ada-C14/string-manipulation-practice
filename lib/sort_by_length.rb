# frozen_string_literal: true

# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  my_sentence = my_sentence.split
  i = 0
  while i <= my_sentence.length - 2

    j = 1
    while j <= my_sentence.length - i - 1
      if my_sentence[j].length < my_sentence[j-1].length
        my_sentence[j], my_sentence[j-1] = my_sentence[j-1], my_sentence[j]
      end
      j += 1
    end
    i += 1
  end

  return my_sentence
end
