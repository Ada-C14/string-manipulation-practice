# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O()

def reverse_words(array_of_words)
  array_of_words.each do |word|
    #reverse word
    i = 0
    length = word.length

    while i < length / 2
      temp = word[length - 1 - i ]
      word[length - 1 - i ] = word[i]
      word[i] = temp
      i += 1
    end
  end

  return array_of_words
end

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  # idea is to reverse the string element by element
  # and then find just the "words" (non-whitespace characters) and reverse the words back in place

  length = my_sentence.length
  i = 0
  while i < (length/2)
    temp = my_sentence[length - 1 - i]
    my_sentence[length - 1 -i] = my_sentence[i]
    my_sentence[i] = temp

    i += 1
    p my_sentence
  end
  #string is now reversed - "dlrow ,olleh"

  words = my_sentence.scan(/[^\s]+/)
  p words
  dup_words = words.map {|word| word + ""}
  reversed_words = reverse_words(dup_words)
  p reversed_words

  words.each_with_index do |word, index|
    my_sentence.gsub!(word, reversed_words[index])
  end
  p my_sentence

  return my_sentence
end


reverse_sentence("hello, world")
