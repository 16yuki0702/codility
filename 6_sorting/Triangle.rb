s1 = [10, 2, 5, 1, 8, 20] 
s2 = [10, 50, 5, 1]

def solution(a)
  n = a.length
  if n < 3 
    return 0
  end 

  sorted = a.sort
  i = 0 

  while n > (i + 2)
    if (sorted[i] + sorted[i+1]) > sorted[i+2]
      return 1
    end 
    i += 1
  end 

  return 0
end

p solution(s1)
p solution(s2)
