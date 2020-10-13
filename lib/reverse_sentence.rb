# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)

  if my_sentence == nil
    return nil
  end

  word_arr = my_sentence.split(" ")

  reversed = reverse_arr(word_arr)
  string = ""

  reversed.each do |word|
    string << word
    if index != reversed.length-1
      string << " "
    end
  end

  return string
  # raise NotImplementedError
end

def reverse_arr(array)
  array.each_with_index.map do |word, index|
    array[array.length-1-index]
  end
end

string = "I love the puppy boi!"

want = "boi! puppy the love I"

