s1 = [1, 5, 2, 1, 4, 0]

def solution(a)
  n = a.length
  active = Array.new(n)
  deactive = Array.new(n)

  a.each_with_index do |e, i|
    active[i] = i - e 
    deactive[i] = i + e 
  end 

  active.sort!
  deactive.sort!

  idx = active_index = deactive_index = 0 
  total = current_active = 0 

  while n > idx 
    while active_index < n && active[active_index] <= deactive[deactive_index]
      active_index += 1
      current_active += 1
    end 

    current_active -= 1
    total += current_active

    if total > 10000000
      return -1
    end 

    deactive_index += 1
    idx += 1
  end 

  total
end

