sample = [1, 3, 1, 4, 2, 3, 5, 4]

def solution(x, a)
  n = a.length
  sets = Array.new(n)
  count = 0
  
  a.each_with_index do |e, i|
    idx = e - 1
    if sets[idx].nil?
      sets[idx] = 1
      count += 1
      if count == x
        return i
      end
    end
  end
  return -1
end

p solution(5, sample)
