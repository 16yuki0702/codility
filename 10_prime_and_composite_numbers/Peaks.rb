s1 = [1, 2, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]
s2 = [1, 3, 2, 1]

def solution(a)
  n = a.length
  peaks = {}
  i = 1

  while i < n - 1
    if a[i - 1] < a[i] && a[i] > a[i + 1]
      peaks[i] = true
    end
    i += 1
  end

  return 0 if peaks.length == 0

  i = 1
  divides = []
  while i <= (n / 2)
    if n % i == 0
      divides << i
    end
    i += 1
  end

  max = 1
  divides.each do |e|
    left = 0
    right = e - 1
    catch(:notpeak) do
      while left < n
        found = false
        (left..right).each do |e|
          if peaks[e] 
            found = true
            break
          end
        end
        if !found
          throw :notpeak
        end
        left = right + 1
        right += e
      end
      tmp = n / e
      if tmp > max
        max = tmp
      end
    end
  end

  max
end

p solution(s1)
p solution(s2)
