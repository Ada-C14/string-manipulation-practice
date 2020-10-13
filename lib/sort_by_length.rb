# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n)
# Space complexity: O(n)
# selection sort attempt:

def sort_by_length(my_sentence)
  sentence_array = my_sentence.gsub(/[^a-z0-9\s]/i, '').split(" ")
  i = 0
    while i < sentence_array.length
      j = i
      while j > 0
        if sentence_array[j-1].length > sentence_array[j].length
          sentence_array[j], sentence_array[j-1] = sentence_array[j-1], sentence_array[j]
        else
          break
        end
        j -= 1
      end
      i += 1
    end
  return sentence_array
end

p sort_by_length("If you wish upon a star... doesn't matter who you are")