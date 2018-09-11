s1 = [3, 4, 4, 6, 1, 4, 4]

def solution(n, a)
  counter = Array.new(n, 0)

  m = a.length
  idx = max = found_max = 0

  while (m > idx)
    elem = a[idx]
    cidx = elem - 1
    if elem == (n + 1)
      found_max = max
    else
      counter[cidx] = found_max > counter[cidx] ? found_max + 1 : counter[cidx] + 1
      if counter[cidx] > max
        max = counter[cidx]
      end
    end
    idx += 1
  end

  counter.map! {|e| found_max > e ? found_max : e}
end

p solution(5, s1)
