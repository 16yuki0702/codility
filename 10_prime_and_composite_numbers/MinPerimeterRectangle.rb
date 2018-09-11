s1 = 30
s2 = 1

def solution(n)
  sqrt = Math.sqrt(n)
  min = 2147483647

  (1..n).each do |e|
    break if e > sqrt
    div = n / e 
    if n == (e * div)
      tmp = 2 * (e + div)
      min = tmp < min ? tmp : min 
    end
  end

  min
end

p solution(s1)
p solution(s2)
