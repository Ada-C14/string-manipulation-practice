# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: O(n) where n is the final size of switch_a
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return nil
  elsif my_sentence.length <= 1
    return "my_sentence"
  end

  switch_a = [] # to separate white space and words into array, in order
  lhs = 0
  rhs = 1
  next_ele = false
  while rhs < my_sentence.length
    if my_sentence[lhs] == " " && my_sentence[rhs] != " "
      next_ele = true
    elsif my_sentence[lhs] != " " && my_sentence[rhs] == " "
      next_ele = true
    end
    if next_ele
      switch_a.prepend(my_sentence[lhs...rhs])
      lhs = rhs
      next_ele = false
    end
    rhs += 1
  end
  switch_a.prepend(my_sentence[lhs...rhs])

  switch_str = switch_a.join("")

  my_sentence.length.times do |i|
    my_sentence[i] = switch_str[i]
  end

  return my_sentence
end