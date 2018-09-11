s1 = [3, 2, -6, 3, 0]

def solution(a)
  n = a.length
  edge = a[0]
  max = a[0]
  i = 1

  while i < n
    tmp = edge + a[i]
    edge = tmp > a[i] ? tmp : a[i]
    max = max < edge ? edge : max
    i += 1
  end

  max
end

p solution(s1)
