s1 = 24

def solution(n)
  sqrt = Math.sqrt(n)
  res = 0

  (1..n).each do |e|
    break if e > sqrt
    if n % e == 0
      res += 2
    end
  end
  if sqrt == sqrt.to_i
    res -= 1
  end

  res
end

p solution(s1)
