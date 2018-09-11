s1 = [23171, 21011, 21123, 21366, 21013, 21367]

def solution(a)
  min = 200000
  max = 0

  a.each_with_index do |s, i|
    if s < min
      min = s
    end
    if min > s
      next
    end
    tmp = s - min
    if tmp > max
      max = tmp
    end
  end

  max
end

p solution(s1)
