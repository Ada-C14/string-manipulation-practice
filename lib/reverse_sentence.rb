# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^3) (n = number of elements in the input object; each loop has O(n) time complexity, so the total time complexity is O(n^3))
# Space complexity: O(n) (n = number of elemetns in the input array)


def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  reverse_phrase = []
  word = []
  index = 0

  while index < my_sentence.length
    if my_sentence[index] == " "
      reverse_phrase << word.join
      reverse_phrase << " "
      word = []
    else
      word << my_sentence[index]
    end
    index += 1
  end
  reverse_phrase << word.join

  last_index = reverse_phrase.length - 1
  index = 0
  while last_index >= 0
    if index < last_index
      word = reverse_phrase[index]
      reverse_phrase[index] = reverse_phrase[last_index]
      reverse_phrase[last_index] = word
      index += 1
    end
    last_index -= 1
  end

base_index = 0
sentence = reverse_phrase.join
while base_index < sentence.length
  my_sentence[base_index] = sentence[base_index]
  base_index += 1
end
  return my_sentence
end



