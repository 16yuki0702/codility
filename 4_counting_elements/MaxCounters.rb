s1 = [4, 1, 3, 2]
s2 = [4, 1, 3]

def solution(a)
  sorted = a.sort
  n = sorted.length
  current = idx = 0

  while (n > idx)
    before = current
    current = sorted[idx]
    if before == current
      return 0
    elsif (current - 1) != before
      return 0
    end
    idx += 1
  end
  return 1
end

p solution(s1)
p solution(s2)
