s1 = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]

def solution(a)
  peaks = []
  i = 1
  n = a.length

  while i < n - 1
    if a[i - 1] < a[i] && a[i] > a[i + 1]
      peaks << {value: a[i], index: i}
    end
    i += 1
  end
  
  p_num = peaks.length
  max = 0
  (2..p_num).each do |i|
    k = 1
    count = 0
    while k < p_num
      diff = peaks[k][:index] - peaks[k - 1][:index]
      if diff >= i
        count += 1
      end
      k += 1
    end
    if count >= i
      max = count
    end
  end

  max
end

p solution(s1)
