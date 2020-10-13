# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  words = my_sentence.split(" ")

  words.length.times do |index|

    i = index
    j = index + 1
    while j < words.length
      if words[j].length < words[i].length
        i = j
      end
      j += 1
    end
    if i != index
      temp = words[i]
      words[i] = words[index]
      words[index] = temp
    end

  end
  return words
end
