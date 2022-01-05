# > Directions

# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

DIGITS = {'zero'=>'0', 'one'=>'1', 'two'=>'2', 'three'=>'3', 'four'=>'4',
          'five'=>'5', 'six'=>'6', 'seven'=>'7', 'eight'=>'8', 'nine'=>'9'}
          
def word_to_digit(str)
  words = str.split
  words.each_with_index {|word, i| 
    words[i] = DIGITS[word] if DIGITS.keys.include?(word)
    words[i][0..-2] = DIGITS[word[0..-2]] if DIGITS.keys.include?(word[0..-2])
  }
  words.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'