# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)

  return my_sentence if my_sentence == nil

  array = my_sentence.split(/(\s+)/)

  return my_sentence if array.length <= 1

  new_sentence = ""
  array.length.times {new_sentence << array.pop}

  new_sentence.each_char.with_index do |char, i|
    my_sentence[i] = char
  end

  return my_sentence
end


