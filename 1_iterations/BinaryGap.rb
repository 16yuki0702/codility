[1,2,147,483,647].each do |i|
  binary = i.to_s(2)
  max, tmp = 0, 0
  binary.chars do |c|
    if c == '0'
      tmp = tmp + 1
    else
      if tmp > max
        max = tmp
      end
      tmp = 0
    end
  end
  p "#{binary}: max = #{max}"
end
