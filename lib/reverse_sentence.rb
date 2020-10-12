# A method to reverse the words in a sentence, in place.
# Time complexity: O(m), m being the size of the string.I have two loops O(2m) but they are not nested. we drop the coeficient.
# Space complexity: O(n), I created a new array that will handle the swapping of the words.

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  return my_sentence if my_sentence.length == 0

  words_array = my_sentence.split(/(\S+)/).reject(&:empty?)

  j = (words_array.length / 2)
  while j <= words_array.length - 1
    temp = words_array[j]
    words_array[j] = words_array[words_array.length - 1 - j]
    words_array[words_array.length - 1 - j] = temp
    j += 1
  end
  reversed_sentence = words_array.join(" ")
  i = 0
  while i < reversed_sentence.length
    my_sentence[i] = reversed_sentence[i]
    i += 1
  end

  my_sentence[0...my_sentence.length] = words_array.join[0...my_sentence.length]
  return my_sentence
end




