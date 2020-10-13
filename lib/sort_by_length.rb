# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2), where n = num of words in sentence
# Space complexity: O(1) since sorting is happening in-place


def sort_by_length(my_sentence)
  #insertion sort
  my_sentence = my_sentence.split
  i = 0
  num_words = my_sentence.length

  while i < num_words
    j = i
    while j > 0
      if my_sentence[j].length < my_sentence[j - 1].length
        #parallel assignment
        my_sentence[j], my_sentence[j - 1] = my_sentence[j - 1], my_sentence[j]
      end
      j -= 1
    end
    i += 1
  end

  return my_sentence

end
