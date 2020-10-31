# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: o(n2)
# Space complexity: o(n2)

def sort_by_length(my_sentence)
  counter = 0
  separated_words = my_sentence.split(/\s/).select { |k| k != "" }

  # outer loop
  while counter < separated_words.length - 1
    index = 0
    # inner loop
    while index < separated_words.length - 1
      if separated_words[index].length > separated_words[index + 1].length
        temp = separated_words[index]
        separated_words[index] = separated_words[index + 1]
        separated_words[index + 1] = temp
      end
      index += 1
    end
    counter += 1
  end
  return separated_words
end
