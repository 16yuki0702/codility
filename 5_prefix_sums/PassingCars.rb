def solution(a, b, k)
  a_sum = a / k
  b_sum = b / k
  d = b_sum - a_sum
  d = (a % k) == 0 ? d + 1 : d
end

p solution(6, 11, 2)
