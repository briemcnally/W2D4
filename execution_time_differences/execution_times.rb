require 'byebug'

def smallest_phase1(arr)
  arr.each_with_index do |el1, idx1|
    smallest = true

    arr.each_with_index do |el2, idx2|
      next if idx1 == idx2
      smallest = false if el2 < el1
    end

    return el1 if smallest
  end

end


def smallest_phase2(arr)

  smallest = arr.first

  arr.each do |el|
    smallest = el if el < smallest
  end

  smallest
end

def largcon_phase1(arr)

  subs = []

  (0...arr.length).each do |i|
    (i...arr.length).each do |j|
      subs << arr[i..j]
    end
  end


  # subs
  subs.map {|sub| sub.reduce(:+)}.max
end

def largcon_phase2(arr)
  sum = 0
  max = 0

  i = 0
  while i < arr.length
    if sum + arr[i] > 0
      sum += arr[i]
      max = sum if sum > max
      i += 1
    else
      sum = 0
      i += 1
    end
  end

  max
end
