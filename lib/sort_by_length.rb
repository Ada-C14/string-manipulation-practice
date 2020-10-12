# A method which will return an array of the words in the string
# sorted by the length of the word.
# Time complexity: O(n^2) First loop is dependent on the number of words in the sentence,
# the nested loop also depends on the length of the array and the order of the word lengths. Best case can be O(n)
# Space complexity: O(n) because a new array was created.

# insertion sort
def sort_by_length(my_sentence)
  words = my_sentence.split(" ")
  i = 1
  while i < words.length
    temp = words[i]
    j = i
    while j > 0 && words[j - 1].length > temp.length
      words[j] = words[j - 1]
      j -= 1
    end
    words[j] = temp
    i += 1
  end
  return words
end
