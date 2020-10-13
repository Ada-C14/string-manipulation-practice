
# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
#
my_sentence = 'Kobi, the cat!'
test_string = 'Kobi, the cat!'

def reverse_in_place(string, starting_index, word_length)

  while starting_index < word_length / 2
    temp = string[starting_index]
    p temp
    string[starting_index] = string[word_length - starting_index - 1]
    string[word_length - starting_index - 1] = temp
    starting_index += 1
  end

  return string

end

def reverse_sentence(sentence)
  reverse_in_place(sentence, 0, sentence.length)
  # word = ''
  (1..sentence.length).each do |word|
    puts word
  end
  # reverse_in_place(word, word, word.length)
  return sentence

end

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

p reverse_in_place(test_string, 0, test_string.length)
# p reverse_sentence(my_sentence)
