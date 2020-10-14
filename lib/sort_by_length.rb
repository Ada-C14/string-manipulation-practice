# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) because of nested n-iteration loops
# Space complexity: O(n) due to split method
def sort_by_length(my_sentence)
  my_words = my_sentence.split(" ")

  # Replicates insertion sort algorithm
  my_words.length.times do |i|
    while i > 0
      if my_words[i - 1].length > my_words[i].length
        my_words[i - 1], my_words[i] = my_words[i], my_words[i - 1]
      else
        break
      end
      i -= 1
    end
  end

  return my_words
end
