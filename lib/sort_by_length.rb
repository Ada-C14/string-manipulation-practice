# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  sort = my_sentence.split("\s")
  length = sort.length

  i = 1
  while i < length
    to_insert = sort[i]
    j = i

    while j > 0 && (sort[j - 1]).size > to_insert.size
      sort[j] = sort[j - 1]
      j -= 1
    end
    sort[j] = to_insert
    i += 1
  end

  return sort

end
