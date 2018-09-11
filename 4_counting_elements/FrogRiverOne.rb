sample = [1, 3, 6, 4, 1, 2]
sample2 = [1, 2, 3]
sample3 = [-1, -3]
sample4 = [2]
sample5 = [-1000000, 1000000]
sample6 = [4, 5, 6, 2] 
sample7 = [4, 1, 5, 6, 2]
sample8 = [3, 1, 5, 6, 2, 2]

def solution(a)
  sorted = a.sort
  n = a.length
  idx = -1

  sorted.each_with_index do |e, i|
    if e > 1
      if i == 0 or (i + 1) == n
        return 1
      end
      idx = i
      break
    end
  end

  if idx == -1
    if sorted[n - 1] == 1
      return 2
    else
      return 1
    end
  end

  while (n > idx)
    current = sorted[idx]
    next_value = sorted[idx + 1]
    expect = current + 1
    if current == next_value
      idx += 1
      next
    elsif expect != next_value
      return expect
    end
    idx += 1
  end
end

p solution(sample)
p solution(sample2)
p solution(sample3)
p solution(sample4)
p solution(sample5)
p solution(sample6)
p solution(sample7)
p solution(sample8)
