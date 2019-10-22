# Your Code Here
def map(source_array)
  new_array = source_array 
  count = 0 
  while count<new_array.length do 
    new_array[count] = yield(new_array[count])
    count += 1 
  end 
  return new_array 
end 

def reduce(source_array, starting_value=0)
  
  i = 0 
  while i<source_array.length do 
    
    value = yield(source_array)
    
    if value == true 
      return true 
    elsif value.class == Integer
        
        value += value 
    end 
    i+= 1 
  end 
  if starting_value != 0 
    value += starting_value 
  end 
  return value 
end 