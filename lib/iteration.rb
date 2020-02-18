 #uses array_1 in the spec, which has 3 arrays inside of it, each array containing two elements. going to use src though since that's the parameter being used by the test
 #shelving this for now. come back later please :) :)
 
def join_ingredients(src)
final_array = []
row_index = 0
while row_index < src.count do
  element_index = 0
  while element_index < src[row_index].count do
    final_array << "I love #{src[row_index][element_index]} and #{src[row_index][element_index+=1]} on my pizza"
    element_index += 1
  end
   row_index += 1
 end 
final_array
end

 
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair


  #we've done something similar to this before. we set a variable equal to the first number in the sequence then asked it to loop--if the variable was smaller than the comparison, the comparison became the new variable. maybe this will be an "if" loop??
 
 require pry
  def find_greater_pair(src)
binding.pry
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0 
    inner_results = []
    while element_index < src[row_index].count do
      if src[row_index][element_index] <= src[row_index][element_index+=1]
        inner_results << src[row_index][element_index]
      else inner_results << src[row_index][element_index+=1]
    end
    element_index += 1
  end
    outer_results << inner_results
    row_index += 1
 end
outer_results
end
  
  
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  
# def total_even_pairs(src)
# total = 0
# row_index = 0
#   while row_index < src.count do
#     element_index = 0
#     
#     
 
# end
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total 
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

