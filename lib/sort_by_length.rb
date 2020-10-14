# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2 )
# Space complexity: O(n)
def sort_by_length(my_sentence)

  if my_sentence == nil
    return []
  end

  if my_sentence == ""
    return []
  end

  array_of_words = my_sentence.split(' ')
  # puts "#{array_of_words}"

  i = 1
  while i < array_of_words.length
    to_insert = array_of_words[i]
    j = i
    while j > 0 && array_of_words[j-1].length > to_insert.length
      array_of_words[j] = array_of_words[j-1]
      j -= 1
    end
    array_of_words[j] = to_insert
    i += 1
  end
  return array_of_words
end

sentence = "i love you so much"
puts "#{sort_by_length(sentence)}"

