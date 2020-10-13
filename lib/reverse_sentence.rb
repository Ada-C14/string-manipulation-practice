# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return if my_sentence.nil?

  reverse_word(my_sentence, 0, my_sentence.length)
  word_end = 0
  until (word_start = find_word_start(my_sentence, word_end)) == -1
    word_end = find_word_end(my_sentence, word_start)
    reverse_word(my_sentence, word_start, word_end)
  end
end

def reverse_word(my_sentence, first_index, last_index)
  # first_index = 0
  # last_index = my_sentence.length - 1
  last_index -= 1
  while last_index > first_index
    temp = my_sentence[last_index]
    my_sentence[last_index] = my_sentence[first_index]
    my_sentence[first_index] = temp
    first_index += 1
    last_index -= 1
  end
end

def find_word_start(my_sentence, word_end = 0)
  #finding the word to implement mirroring
  word_start = word_end
  until word_start == my_sentence.length
    if my_sentence[word_start] != " "
      return word_start
    end
    word_start += 1
  end
  return -1 # No more words
end

def find_word_end(my_sentence, word_start)
  word_end = word_start
  until word_end == my_sentence.length
    if my_sentence[word_end] == " "
      return word_end
    end
    word_end += 1
  end
  return word_end
end 