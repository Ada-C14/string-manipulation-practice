# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  words = my_sentence.split(" ")
  swap = true
  until swap == false do
    swap = false
    (1...words.length).each do |index|
      if words[index - 1].length <= words[index].length
      else
        words[index - 1], words[index] = words[index], words[index - 1]
        swap = true
      end
    end
  end
  return words
end
