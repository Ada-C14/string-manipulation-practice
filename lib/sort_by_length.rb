#
# return an array of words in the string, sorted by length
#  sorted by the length of the word.
# Time complexity: ? O(n^2)
# Space complexity: ? O(1)

def selection_sort(array) # no optimization with selection sort best and worst case the same
  i = 0
  while i < array.length - 1
    min_index = i
    j = i+1
    while j < array.length
      if array[j].length < array[min_index].length
        min_index = j
      end
      j += 1
    end
    if min_index != i
      temp = array[min_index]
      array[min_index] = array[i]
      array[i] = temp
    end
    i += 1
  end
  return array
end

def sort_by_length(my_sentence)
  unsorted_array = my_sentence.split(" ")
  selection_sort(unsorted_array)
  return unsorted_array
end

string = "ruby is so awesome"
string2 = "why is the sky green "
p sort_by_length(string)
p sort_by_length(string2)








# def selection_sort(array)
#   n = array.length - 1
#   n.times do |i|
#     min_index = i
#     for j in (i + 1)..n
#       min_index = j if array[j] < array[min_index]
#     end
#     array[i], array[min_index] = array[min_index], array[i] if min_index != i
#   end
#   puts array
# end
#
# array = [10, 30, 27, 7, 33, 15, 40, 50]
# selection_sort(array)

# if non_sorted_sentence == nil
#   puts "array of string is empty"
# else

