# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(nlog(n)) where n is the length of the string
# Space complexity: o(n) where n is the length of the string
def sort_by_length(my_sentence)
  return sort(my_sentence.scan(/[a-zA-Z]+/))
end

def sort(words)
  return words if words.length <= 1

  left = sort(words[0...words.length/2])
  right = sort(words[words.length/2...words.length])

  merge(left, right)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?

  shortest = left[0].length <= right[0].length ? left.shift : right.shift

  merged = merge(left, right)

  return [shortest] + merged
end