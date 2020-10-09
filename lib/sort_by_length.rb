# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) insertion sort
# Space complexity: 0(n) created new array&hash that have the linear relationship with the length of the input
def sort_by_length(my_sentence)
  my_sentence = my_sentence.split(" ")
  sentence_hash = Hash.new
  my_sentence.map do |word|
    sentence_hash[word] = word.length
  end

  array = sentence_hash.values
  i = 1
  while i < my_sentence.length
    value_to_insert = array[i]
    j = i

    while j > 0 && array[j-1] > value_to_insert
      array[j] = array[j-1]
      j -= 1
    end
    array[j] = value_to_insert
    i += 1
  end

  word = []
  array.map do |length|
    word << sentence_hash.key(length)
    sentence_hash.delete(sentence_hash.key(length))
  end

  return word
end


