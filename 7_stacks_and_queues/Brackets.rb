a1 = [4, 3, 2, 1, 5]
b1 = [0, 1, 0, 0, 0]

def solution(a, b)
  n = a.length
  down = []
  count = 0

  a.each_with_index do |e, i|
    if b[i] == 1
      down.push(e)
      count += 1
    else
      if down.length == 0
        count += 1
        next
      else
        loop do
          d = down[down.length - 1]
          if d > e
            break
          else
            down.pop()
            count -= 1
          end
          if down.length == 0
            count += 1
            break
          end
        end
      end
    end
  end

  count
end

p solution(a1, b1)
