def solution(x, y, d)
  diff = y - x
  div = diff / d
  if (diff % d) > 0
    div += 1
  end
  div
end

p solution(10, 85, 30)
