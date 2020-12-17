# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n2)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return true
  end
    i = 0
    while i < my_sentence.length/2
      temp = my_sentence[i]
      my_sentence[i] = my_sentence[my_sentence.length - 1 - i]
      my_sentence[my_sentence.length - 1 - i] = temp
      i+= 1
    end
    i = 0
    start_index = 0
    end_index = 0
    while i < my_sentence.length
      if my_sentence[i] != " "
        if i == 0 || my_sentence[i - 1] == " "
          start_index = i
        end
        if my_sentence[i + 1] == " " || i == my_sentence.length - 1
          end_index = i
          j = 0
          while j <= (end_index - start_index)/2
            temp = my_sentence[j + start_index]
            my_sentence[j + start_index] = my_sentence[end_index - j]
            my_sentence[end_index - j] = temp
            j+= 1
          end
        end
      end
      i += 1
    end
end

