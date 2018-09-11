sample = [9, 3, 9, 3, 9, 7, 9]
sample2 = [2, 2, 3, 3, 4]

def solution(a)
  sorted = a.sort
  n = sorted.length
  i = 0
  while (n > i)
    if sorted[i] != sorted[i+1]
      return sorted[i]
    end
    i += 2
  end
end

p solution2(sample)
p solution2(sample2)
