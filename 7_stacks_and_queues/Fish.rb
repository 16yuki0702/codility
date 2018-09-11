s1 = "{[()()]}"
s2 = "([)()]"

def solution(a)
  n = a.length
  tmp = []

  a.chars do |c|
    if c == '(' || c == '[' || c == '{'
      tmp.push(c)
    elsif c == ')'
      if tmp.length == 0
        return 0
      end

      loop do
        e = tmp.pop()

        break if e == '('
        return 0 if tmp.length == 0
      end
    elsif c == ']'
      if tmp.length == 0
        return 0
      end

      loop do
        e = tmp.pop()

        break if e == '['
        return 0 if tmp.length == 0
      end
    elsif c == '}'
      if tmp.length == 0
        return 0
      end

      loop do
        e = tmp.pop()

        break if e == '{'
        return 0 if tmp.length == 0
      end
    end
  end

  if tmp.length == 0
    1
  else
    0
  end
end

p solution(s1)
p solution(s2)
