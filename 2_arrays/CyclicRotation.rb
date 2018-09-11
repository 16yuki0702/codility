sample = [1, 2, 3, 4, 5]

def solution(a, k)
  return a if a.nil? or a.empty?
  
  n = a.length
  step = (k % n)
  return a if step == 0
  
  pos = n - step
  first = a.slice(0, pos)
  second = a.slice(pos, n)
  second.concat(first)
end

(0..15).each do |i|
  p solution(sample, i)
end
