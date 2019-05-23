
# def bad_two_sum(arr,target)
#   new_arr = []
#   (0...arr.length).each do |idx|
#     (idx...arr.length).each do |idx2|
#       new_arr <<[idx,idx2] if idx < idx2 && arr[idx] + arr[idx2] == target 
#     end    
#   end    
#   new_arr

# end 

def sorted_two_sum(arr,target)
  arr.each do |el|
    if arr.sort.bsearch {|x| x + el == target}
      return true 
    end    
  end     
  return false 
  
end
   

p sorted_two_sum([1, 3, 4, 1, 3, 1], 6)

def good_two_sum(arr,target)
  counter = Hash.new

  arr.each_with_index do |el, idx|
    counter[el] = nil
    if counter.has_key?(target - el)
      return true 
    end
  end
  return false 
end

p good_two_sum([1, 3, 4, 1, 3, 1], 6)
