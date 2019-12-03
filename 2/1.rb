i = File.read('i').split(',').map(&:to_i)
i[1] = 12
i[2] = 2

(0...i.length).step(4) do |p|
  break if i[p] == 99

  i[i[p + 3]] = [i[i[p + 1]], i[i[p + 2]]].reduce(&%i[+ *][i[p] - 1])
end

p i[0]
