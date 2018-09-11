s = [-3, 1, 2, -2, 5, 6]
s2 = [-10, -2, -4]
s3 = [-5, 5, -5, 4]

def solution(a)
  n = a.length
  if n == 3
    return a[0] * a[1] * a[2]
  end

  sorted = a.sort

  r1 = sorted[0] * sorted[1] * sorted[n - 1]
  r2 = sorted[n - 3] * sorted[n - 2] * sorted[n - 1]

  r1 > r2 ? r1 : r2
end

p solution(s)
p solution(s2)
p solution(s3)
