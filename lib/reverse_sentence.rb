# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_string(string, i, j)
  return if string.length <= 1
  while i < j
    place_hold = string[i]
    string[i] = string[j]
    string[j] = place_hold
    i += 1
    j -= 1
  end
  return string
end

def reverse_sentence(my_sentence)
  # return early if input is null or empty
  return if my_sentence.nil?
  return "" if my_sentence.length <= 1

  # reverse string
  reverse_string(my_sentence, 0, my_sentence.length - 1)

  word_start = 0
  word_end = 0

  # find word_end
  until my_sentence[word_end] == " " || !(word_end < my_sentence.length)
    word_end += 1
  end

  # loop through words
  while word_end <= my_sentence.length
    # reverse word
    reverse_string(my_sentence, word_start, word_end - 1)

    # find new word_start
    word_start = word_end + 1

    # find new word_end
    word_end = word_start
    until my_sentence[word_end] == " " || word_end > (my_sentence.length - 1)
      word_end += 1
    end
  end

  return my_sentence
end


p reverse_sentence("Hello, world")
p reverse_sentence("Yoda is awesome!")
p reverse_sentence("    This is fine!   ")
p reverse_sentence("Hello      how are you?")