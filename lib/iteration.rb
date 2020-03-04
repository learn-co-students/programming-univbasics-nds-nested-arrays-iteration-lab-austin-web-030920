def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

  row_index = 0
  pizza_thoughts = []
  while row_index < src.count do
    foods = src[row_index]
    pizza_thoughts << "I love #{foods[0]} and #{foods[1]} on my pizza"
    row_index += 1
  end
  pizza_thoughts
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row_index = 0
  larger_numbers = []
  while row_index < src.count do
    a = src[row_index][0]
    b = src[row_index][1]
    larger_numbers << ( (a > b) ? a : b )
    row_index += 1
  end
  larger_numbers
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  row_index = 0
  total = 0
  while row_index < src.count do
    a = src[row_index][0]
    b = src[row_index][1]

    # modulo must be compared to a number for Boolean result
    if (a % 2 == 0 && b % 2 == 0)
      total += (a + b)
    end

    row_index += 1
  end
  total #=> Integer
end
