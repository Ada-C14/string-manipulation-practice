# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)

def reverse_in_place(string, starting_index, word_length)
  mid_point = word_length / 2 + starting_index
  end_point = starting_index + word_length - 1

  while  starting_index < mid_point

    temp = string[starting_index]
    string[starting_index] = string[end_point]
    string[end_point] = temp
    starting_index += 1
    end_point -= 1

  end

  return string

end


def get_next_word_index_and_length(sentence, current_index)
  word_length = 1
  word_index = current_index
  while word_index < sentence.length
    if sentence[word_index] != ' '
      break
    end

    word_index += 1
  end

  while word_length + word_index < sentence.length
    if sentence[word_length + word_index] == ' '
      break
    end

    word_length += 1
  end

  return word_index, word_length
end

def reverse_sentence(sentence)
  # return nil unless String
  return nil unless sentence
  # return nil string is nil
  return nil if sentence.nil?
  # return '' if String.empty?
  return '' if sentence.empty?

  reverse_in_place(sentence, 0, sentence.length)

  word_index = 0
  word_length = 1

  until word_length + word_index > sentence.length
    word_index, word_length = get_next_word_index_and_length(sentence, word_index)
    reverse_in_place(sentence, word_index, word_length)
    word_index += word_length

  end

  return sentence

end

