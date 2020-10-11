# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2): the looping time for each recursion is descending,
#                          so the total time would be ((1 + n) * n/2 --> O(n^2)
# Space complexity: O(n^2): for each recursion, it creates a set of string_to_array/less/greater arrays (O(3n)).
#                         if there are (n-1) times of recursion, the space complexity would be O(3n)*O(n-1) --> O(n^2)

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


