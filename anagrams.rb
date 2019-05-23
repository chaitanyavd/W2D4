   

def first_anagram?(str)
  perm = str.split('').permutation.to_a
end

def second_anagram?(str, str2)
  return true if str.include?(first_anagram?(str2))
end

## SvT == (2^n)

def third_anagram?(str1, str2)
  return true if str1.split('').sort! == str2.split('').sort!
end

## SvT == O(nLogn)

def fourth_anagram?(str1, str2)
  counter = Hash.new(0)
  str1.each_char do |char|
    counter[el] += 1
  end
  str2.each_char do |char|
    counter[el] -= 1
  end

  counter.all {|k,v| v.zero?}
end

## SvT == O(n)

