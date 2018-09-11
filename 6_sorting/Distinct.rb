s1 = [2, 1, 1, 2, 3, 1]
s2 = []

def solution(a)
  sorted = a.sort
  n = a.length

  if n == 0
    return 0
  end

  idx = count = 1
  current = sorted[0]

  while n > idx
    tmp = sorted[idx]
    if current != tmp
      count += 1
    end
    current = tmp
    idx += 1
  end
  count
end

p solution(s1)
p solution(s2)
