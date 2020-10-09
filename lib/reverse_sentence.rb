# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: ?
def reverse_sentence(my_sentence)
  # raise NotImplementedError
  if my_sentence.nil? || my_sentence.empty?
    return my_sentence
  end

  my_arr = my_sentence.split(/(\S+)/).reject(&:empty?)

  # p "before looping: #{my_arr}"

  start_idx = 0
  end_idx = my_arr.size - 1

  until start_idx > (my_arr.size / 2)
    # p "start idx = #{start_idx}"
    # p "end idx = #{end_idx}"
    # p "before swap: #{my_arr}"
    temp = my_arr[start_idx]
    my_arr[start_idx] = my_arr[end_idx]
    my_arr[end_idx] = temp
    # p "after swap: #{my_arr}"
    start_idx += 1
    end_idx -= 1
  end

  # p my_arr

  my_sentence = my_arr.join
  # p my_sentence
  return my_sentence
end

# p reverse_sentence("I'm a better engineer today than I was yesterday.")
# p reverse_sentence("Hello, world")