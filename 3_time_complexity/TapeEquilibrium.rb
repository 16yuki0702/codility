sample = [-10, -20, -30, -40, 100]
FIXNUM_MAX = (2**(0.size * 8 -2) -1)

def solution(a)
  return (a[0] - a[1]).abs if a.length == 2

  total = a.inject(:+)
  n = a.length
  min = FIXNUM_MAX
  idx = sum = 0

  (1..n-1).each do |i|
    sum += a[idx]
    idx += 1
    abs = ((total - sum) - sum).abs
    if (min > abs)
      min = abs
    end
  end
  min
end

p solution(sample)
