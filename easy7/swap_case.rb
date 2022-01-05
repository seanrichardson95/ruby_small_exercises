# > Directions
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(str)
  result = str.chars.each {|char|
    if char.match?(/[a-z]/)
      char.upcase!
    elsif char.match?(/[A-Z]/)
      char.downcase!
    else
      char
    end
  }
  result.join()
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'