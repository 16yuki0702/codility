s1 = [3, 4, 3, 2, 3, -1, 3, 3]

def solution(a)
  size = 0
  value = 0

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
  end

  leader = -1
  count = 0
  index = 0

  a.each_with_index do |e, i|
    if e == candidate
      count += 1
      index = i
    end
  end

  if count > (a.length / 2)
    index
  else
    -1
  end
end

p solution(s1)
