# A method to reverse the words in a sentence, in place.
#
# Where n is the number of sentence parts in the argument string (ex. chunk of spaces or a word)
# and m is the length of the string (and m > n)
# >> Time complexity: O(m)
#    Split is O(m); where m is length of string
#    Reject is O(n); where n is the number of split parts
#    n/2 swaps are made
# >> Space complexity: O(n)
#    Create an array of size n to do the swapping
def reverse_sentence(my_sentence)
  # raise NotImplementedError
  if my_sentence.nil? || my_sentence.empty?
    return my_sentence
  end

  my_arr = my_sentence.split(/(\S+)/).reject(&:empty?)

  start_idx = 0
  end_idx = my_arr.size - 1

  until start_idx > (my_arr.size / 2)
    temp = my_arr[start_idx]
    my_arr[start_idx] = my_arr[end_idx]
    my_arr[end_idx] = temp

    start_idx += 1
    end_idx -= 1
  end

  my_sentence[0...my_sentence.length] = my_arr.join[0...my_sentence.length]

  return my_sentence
end

