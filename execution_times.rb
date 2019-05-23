# my_min 

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min1(arr)
  arr.min
  
end


#TvS Complexity: O(1)

def my_min2(arr)
min = arr.first
   arr.each do |el|
    if el < min 
      min = el         
    end    
  end    
  min
end

#TvS Complexity: O(n)

###############################################################


#Largest Contiguous Sub-sum

def largest_contiguous_subsum_n_2(arr)
  subs = []
  arr.each_with_index do |el1, i|
    arr.each_with_index do |el2, j|
      if j > i 
        subs << arr[i..j]
      end
    end
  end
  subs
  x = subs.max_by {|arr| arr.sum}
  x.sum
end

#TvS Complexity: O(n^2)








#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def largest_contiguous_subsum(arr)
  sum = 0
  arr_indices = []
  running_sums = []
  arr.each_with_index do |num,idx|
    sum += num  
    arr_indices << idx 
    running_sums << sum
  end   
  running_sums.max

end         

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]#