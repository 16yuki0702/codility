s1 = "CAGCCTA"
p1 = [2, 5, 0]
q1 = [4, 5, 6]

s2 = "TC"
p2 = [0, 0, 1]
q2 = [0, 1, 1]

s3 = "AC"
p3 = [0, 0, 1]
q3 = [0, 1, 1]

def solution(s, p, q)
  ns = {"A" => 1, "C" => 2, "G" => 3, "T" => 4}
  wc = ns.length
  n = s.length
  m = p.length

  counts = Array.new(wc, 0)
  prefix = Array.new(n + 1, 0).map{Array.new(wc, 0)}
  results = Array.new(m, 0)
  idx = 1

  s.chars do |e|
    counts[ns[e] - 1] = counts[ns[e] - 1] += 1
    counts.each_with_index{|ee, ii| prefix[idx][ii] = ee}
    idx += 1
  end

  (0..m-1).each do |i|
    c1 = prefix[p[i]]
    c2 = prefix[q[i] + 1]

    c2.each_with_index do |ee, ii|
      if (ee - c1[ii]) > 0
        results[i] = (ii + 1)
        break
      end
    end
  end
  results
end

p solution(s1, p1, q1)
p solution(s2, p2, q2)
p solution(s3, p3, q3)
