sample = [2, 3, 1, 5]
sample2 = [2]
sample3 = [2, 3, 1, 4]

def solution(a)
  return 1 if a.nil? or a.empty?

  sorted = a.sort
  target = 0
  sorted.each_with_index do |e, i|
    if e != (i + 1)
      target = (i + 1)
      break
    end
  end
  if target == 0
    sorted.length + 1
  else
    target
  end
end

p solution([])
p solution(sample)
p solution(sample2)
p solution(sample3)
