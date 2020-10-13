# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: n
# Space complexity: n * m ? because of variable 'word'
def sort_by_length(my_sentence)
  return [] if my_sentence == ""

  length = my_sentence.length
  sentence_array =[]
  count = 0

  # split my_sentence on each space == my_sentence.split(' ')
  until count >= length
    word = ''

    while count < length && my_sentence[count] != " "
      word << my_sentence[count]
      count += 1
    end

    sentence_array << word
    count += 1
  end

  # sort sentence_array by word length with bubble sort
  i = 0
  while i < sentence_array.length-1 # outer loop
    j = 0
    while j < sentence_array.length-i-1 # inner loop
      if sentence_array[j].length > sentence_array[j+1].length # swap
        temp = sentence_array[j]
        sentence_array[j] = sentence_array[j+1]
        sentence_array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end

  return sentence_array
end
