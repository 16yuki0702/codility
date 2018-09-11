s1 = [3, 2, 6, -1, 4, 5, -1, 2]

def solution(a)
  n = a.length
  if n <= 3
    return 0
  end

  i = 1
  l_max = Array.new(n)
  l_max[0] = 0
  while i < n - 1
    tmp = l_max[i - 1] + a[i]
    l_max[i] = tmp < 0 ? 0 : tmp
    i += 1
  end

  i = n - 1
  r_max = Array.new(n)
  r_max[i] = 0
  i -= 1
  while i > 0
    tmp = r_max[i + 1] + a[i]
    r_max[i] = tmp < 0 ? 0 : tmp
    i -= 1
  end

  max = 0
  i = 1
  while i < n - 1
    tmp = l_max[i - 1] + r_max[i + 1]
    if tmp > max
      max = tmp
    end
    i += 1
  end

  max
end

p solution(s1)
