# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(nlog(n)) for merge sort - although bubble sort and insertion sort can have a best-case time complexity of O(n)
# they have the worst case time complexity of O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  if array.empty?
    array
  else
    merge_sort(array)
  end
end

# The code below was based on the following merge sort example: https://www.youtube.com/watch?v=Vn-qJijXgf0

def merge_sort(array)
  if array.length <= 1
    array
  else
    mid_point = (array.length / 2)
    left = merge_sort(array[0..mid_point - 1])
    right = merge_sort(array[mid_point..array.length])
    merge(left, right)
  end

end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first.length <= right.first.length
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

