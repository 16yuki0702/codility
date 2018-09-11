s1 = [4, 2, 2, 5, 1, 5, 8]

def solution(a)
  n = a.length
  i = 2
  idx = 0

  if n == 2
    return 0
  end

  minavg = ((a[0] + a[1]) / 2.0).to_f

  while n > i do
    tmp1 = ((a[i - 1] + a[i]) / 2.0).to_f
    tmp2 = ((a[i - 2] + a[i - 1] + a[i]) / 3.0).to_f
    if tmp1 < minavg
      idx = i - 1
      minavg = tmp1
    end
    if tmp2 < minavg
      idx = i - 2
      minavg = tmp2
    end
    i += 1
  end
  return idx
end

p solution(s1)
