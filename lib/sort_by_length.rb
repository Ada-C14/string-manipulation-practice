# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) n is the length of the sentence
# Space complexity: O(n)
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split(/\W+/)
  sentence_array_sorted = []
  length = sentence_array.length

  word_and_length = {}
  sentence_array.each do |word|
    word_and_length[word] = word.length
  end

  length.times do
    shortest_word = word_and_length.min_by {|word, length| length}[0]
    sentence_array_sorted << shortest_word
    word_and_length.delete(shortest_word)
  end

  return sentence_array_sorted
end