i = File.read('i').split('-').map(&:to_i)

p (i[0]..i[1]).select { |n| n.to_s.squeeze.size < n.to_s.size }
              .select { |n| n.to_s.chars.each_cons(2).map.all? { |m| m[1] >= m[0] } }.count
