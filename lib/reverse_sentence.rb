# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
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

