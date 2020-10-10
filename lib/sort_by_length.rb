# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  return [] if my_sentence.length == 0
  string_to_array = my_sentence.split
  if string_to_array.count < 2
    return string_to_array
  else
    pivot = string_to_array[0]
    less = Array.new
    greater = Array.new
    string_to_array[1..string_to_array.count].each do |word|
      less.push(word) if word.length < pivot.length
      greater.push(word) if word.length >= pivot.length
    end
  end
  return sort_by_length(less.join(" ")) + [pivot] + sort_by_length(greater.join(" "))
  # raise NotImplementedError, "Method not implemented"
end
