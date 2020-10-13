# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  return [] if my_sentence.empty?

  all_words = my_sentence.split(" ")
  len = all_words.length
  i = 1

  while i < len
    insert = all_words[i]
    j = i

    while j > 0 && all_words[j-1].length > insert.length
      all_words[j] = all_words[j-1]
      j -= 1
    end

    all_words[j] = insert
    i += 1
  end

  return all_words
end