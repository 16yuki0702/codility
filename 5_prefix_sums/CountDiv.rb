s1 = [0, 1, 0, 1, 1]

def solution(a)
  n = a.length
  prefix = Array.new(n, 0)
  sum = count = 0

  a.each_with_index do |e, i|
    prefix[i] = (sum += e)
  end

  a.each_with_index do |e, i|
    if e == 0
      count += (sum - prefix[i])
    end
  end

  count > 1000000000 ? -1 : count
end

p solution(s1)
