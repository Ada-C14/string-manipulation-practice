# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  return "" if my_sentence.empty?

  words = break_words(my_sentence)

  i = 1
  sentence_length = words.length + 1
  reverse = []
  while i < sentence_length
    reverse << words[-i]
    i += 1
  end
  temp = reverse.join
  i = 0
  while i < temp.length
    my_sentence[i] = temp[i]
    i += 1
  end
  my_sentence
end

def break_words(sent)
  temp = Array.new(sent.length,"")
  i = 0
  count = 0
  sent.each_char do |char|
    if char == " "
      i += 1
      temp[i] = char
      i += 1
      count += 2
    else
      temp[i] += char
    end
  end
  temp[0..count]
end
