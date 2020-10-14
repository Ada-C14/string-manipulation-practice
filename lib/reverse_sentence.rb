
# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
#
my_sentence = 'Kobi, the cat!'
test_string = 'Kobi, the cat!'

def reverse_in_place(string, starting_index, word_length)
  return nil unless string

  return '' if string.empty?

  puts string[starting_index..(starting_index + word_length)]
  puts "starting_index: #{starting_index}, word_length: #{word_length}"

  while  starting_index < word_length / 2 + starting_index
    temp = string[starting_index]
    p temp
    string[starting_index] = string[word_length - starting_index - 1]
    p string[starting_index]
    string[word_length - starting_index - 1] = temp
    starting_index += 1
  end

  return string

end

#p reverse_in_place(my_sentence, 0, my_sentence.length)

# for each word,
# (word_index, word_length) = get_next_word_index_and_length(sentence, current_index)
test_sentence = "  Apple is good for you!"
# the first word starts @ index 2 with length = 5
# the next word would start at index 8, length = 2


def get_next_word_index_and_length(sentence, current_index)
  # if sentence.empty?, return nil
  # if end of sentence, return nil
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

def print_word(test_sentence)
  # if test_sentence.empty?
  #   return nil
  # end

  word_index = 0
  word_length = 1
  until word_length + word_index > test_sentence.length
    word_index, word_length = get_next_word_index_and_length(test_sentence, word_index)
    #puts "#{test_sentence[word_index..(word_index + word_length)]}"
    word_index += word_length
    #p word_index
  end
end

#print_word(test_sentence)

# reverse_in_place(test_sentence, 0, test_sentence.length)
# puts test_sentence

def reverse_sentence(sentence)
  reverse_in_place(sentence, 0, sentence.length)

  word_index = 0
  word_length = 1

  until word_length + word_index > sentence.length
    word_index, word_length = get_next_word_index_and_length(sentence, word_index)
    # puts "#{sentence[word_index..(word_index + word_length)]}"
    #puts "word_index: #{word_index}, word_length: #{word_length}"
    word_index += word_length
    reverse_in_place(sentence, word_index, word_length)

  end

  return sentence

end
puts reverse_sentence(test_sentence)

# def reverse_sentence(my_sentence)
# Need to find the starting index for each word and the length of each word
# Count each word in string
# word_count = 1
# char_count = 0
# (1..string.length).each do |i|
#   char_count += 1 if string[i] != ''
#   # string[i].each do |c|
#   #   char_count += c
#   # end
# end
# puts "Number of characters are #{char_count}"
# puts "Number of char #{string.size}"
# (1..string.length).each do |i|
#   if string[i] == ' '
#     word_count += 1
#   end
# end
# puts "Number of words are #{word_count}"
# p reverse_sentence(my_sentence)

# puts reverse_in_place(test_string, 0, test_string.length)
# p reverse_sentence(my_sentence)

# def reverse_sentence(sentence)
#   return nil unless sentence
#   return '' if sentence.empty?
#
#   (0...sentence.size / 2).each do |i|
#     sentence[i], sentence[sentence.size - 1 - i] = sentence[sentence.size - 1 - i], sentence[i]
#   end
#   return sentence
# end
