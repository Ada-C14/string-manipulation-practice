# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  words = my_sentence.split(/\W+/)

  return words if words.size <= 1

  swapped = true
  while swapped
    swapped = false

    (words.length - 1).times do |i|
      if words[i].size > words[i+1].size
        words[i], words[i+1] = words[i+1], words[i]
        swapped = true
      end
    end
  end

  return words
end
