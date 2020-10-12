# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

def sort_by_length(my_sentence)
  word_array = my_sentence.split(" ")
  i = 0

  while i < word_array.length - 1
    short_length = word_array[i].length
    short_spot = i
    j = i + 1

    while j < word_array.length
      if word_array[j].length < short_length
        short_length = word_array[j].length
        short_spot = j
      end
      j += 1
    end

    unless short_spot == i
      short_word = word_array[short_spot]
      word_array[short_spot] = word_array[i]
      word_array[i] = short_word
    end

    i += 1
  end

  return word_array
end
