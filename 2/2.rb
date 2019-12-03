i = File.read('i').split(',').map(&:to_i)

(0..99).each do |j|
  (0..99).each do |k|
    o = i.dup
    o[1] = j
    o[2] = k

    (0...o.length).step(4) do |p|
      break if o[p] == 99

      o[o[p + 3]] = [o[o[p + 1]], o[o[p + 2]]].reduce(&%i[+ *][o[p] - 1])
    end

    p 100 * j + k if o[0] == 19690720
  end
end
