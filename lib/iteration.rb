def join_ingredients(src)
  pizza = []
  row_index = 0 
  while row_index < src.count do
      pizza << "I love " + src[row_index][0] + " and " + src[row_index][1] + " on my pizza"
    row_index += 1 
  end
  return pizza
end

def find_greater_pair(src)
  result = []
  row_index = 0 
  while row_index < src.count do 
    result << src[row_index].max
    row_index += 1 
  end
  return result
end

def total_even_pairs(src)
  total = 0 
  row_index = 0 
  while row_index < src.count do
    if src[row_index][0].even? && src[row_index][1].even?
      total += src[row_index][0] + src[row_index][1]
    end
    row_index += 1 
  end
  return total 
end
