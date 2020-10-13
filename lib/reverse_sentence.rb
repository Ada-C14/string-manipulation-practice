# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n) - we're only making a new array called words_arr that's dependent on the size of my_sentence
def reverse_sentence(my_sentence)
  # how to perserve spaces?
  # split then join
  # "I'm a better engineer today than I was yesterday." => "yesterday. was I than today engineer better a I'm"
  # need to reverse the setence in place!
  return nil if my_sentence.nil?

  words_arr = my_sentence.split(/(?=\s)|(?<=\s)/) # space: O(n)

  i = 0
  j = words_arr.size - 1 # (8)

  # using a temp variable
  while i < j # time: O(n)
    temp = words_arr[i]
    words_arr[i] = words_arr[j]
    words_arr[j] = temp
    i += 1
    j -= 1
  end

  # pay attention to this. setting my_sentence and its characters to equal words_arr and its characters with join
  my_sentence[0...my_sentence.length] = words_arr.join[0...my_sentence.length]

  return my_sentence
end
