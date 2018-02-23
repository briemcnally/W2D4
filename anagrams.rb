require 'byebug'

def anagrams(str1, str2)

  h = str1.split('').permutation.to_a
  h.include?(str2.split(''))

end

def anagrams2(str1, str2)
  arr1 = str1.split('')
  arr2 = str2.split('')

  arr3 = str1.split('')

  arr3.each_index do |idx|
    if arr1.include?(arr3[idx]) && arr2.include?(arr3[idx])
      arr1.delete_at((arr1.find_index(arr3[idx])))
      arr2.delete_at((arr2.find_index(arr3[idx])))
    end
  end

    arr1.join.empty? && arr2.join.empty?

end
# arr1.each_with_index do |ch1, idx|
#   arr2.each_with_index do |ch2, idx2|
#     if arr2.include?(ch1)
#       # arr2.delete_at(arr2.find_index(ch1))
#       arr1.delete_at(idx)
#     elsif arr1.include?(ch2)
#       # arr1.delete_at(arr1.find_index(ch2))
#       arr2.delete_at(idx)
#     end
#   end
# end
# # debugger
#
# arr1.join.empty? && arr2.join.empty?

def anagrams3(str1, str2)

  str1.split('').sort == str2.split('').sort

end

def anagrams4(str1, str2)

  hsh1 = Hash.new(0)
  hsh2 = Hash.new(0)

  str1.chars {|ch| hsh1[ch] += 1}
  str2.chars {|ch| hsh2[ch] += 1}

  hsh1 == hsh2

end
