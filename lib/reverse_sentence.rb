# A method to reverse the words in a sentence, in place.
# Time complexity: ? O(n)
# Space complexity: ? O(n)
def reverse_sentence(my_sentence)

  if my_sentence == nil
    return nil
  end

  word_arr = my_sentence.split(/(\s+)/)

  reversed = reverse_arr(word_arr)
  string = ""

  reversed.each_with_index do |word, index|
    string << word
  end

  return string
  # raise NotImplementedError
end

def reverse_arr(array)
  array.each_with_index.map do |word, index|
    array[array.length-1-index]
  end
end
