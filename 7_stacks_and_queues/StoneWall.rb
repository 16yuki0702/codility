s1 = [8, 8, 5, 7, 9, 8, 7, 4, 8]

def solution(h)
  count = 0
  stack = []

  h.each do |e|
    while stack.length > 0 && stack[stack.length - 1] > e
      stack.pop
    end

    if stack.length > 0 && stack[stack.length - 1] == e
      next
    else
      count += 1
      stack.push(e)
    end
  end

  p stack

  count
end

p solution(s1)
