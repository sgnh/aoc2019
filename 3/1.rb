@d = { U: [0, 1], D: [0, -1], L: [-1, 0], R: [1, 0] }

p File.read('i').split("\n")
      .map { |l| l.scan(/(\D)(\d+)/) }
      .map { |l| l.each_with_object([[0, 0]]) { |p, r| p[1].to_i.times { r.push(@d[p[0].to_sym].zip(r.last).map(&:sum)) }; r } }
      .reduce { |a, b| a & b }
      .map { |p| p.map(&:abs).sum }
      .sort[1]
