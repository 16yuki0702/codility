s1 = [4, 3, 4, 4, 4, 2]

def solution(a)
  size = value = 0

  a.each do |e|
    if size == 0
      size += 1
      value = e
    else
      if value != e
        size -= 1
      else
        size += 1
      end
    end
  end

  candidate = -1
  if size > 0
    candidate = value
  else
    return 0
  end

  count = 0
  a.each_with_index do |e, i|
    if e == candidate
      count += 1
    end
  end

  if count <= (a.length / 2)
    return 0
  end

  leader = candidate
  ans = lcnt = 0

  a.each_with_index do |e, i|
    if e == leader
      lcnt += 1
    end
    lelems = i + 1
    if (lcnt > (lelems / 2)) && ((count - lcnt) > ((a.length - lelems) / 2))
      ans += 1
    end
  end

  ans
end

p solution(s1)
