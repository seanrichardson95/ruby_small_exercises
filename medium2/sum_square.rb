def sum_square_difference(num)
  (1..num).to_a.sum**2 - (1..num).to_a.map {|x| x**2}.sum
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150