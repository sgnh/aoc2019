@d = { U: [0, 1, 1], D: [0, -1, 1], L: [-1, 0, 1], R: [1, 0, 1] }

w = File.read('i').split("\n")
        .map { |l| l.scan(/(\D)(\d+)/) }
        .map { |l| l.each_with_object([[0, 0, 0]]) { |p, r| p[1].to_i.times { r.push(@d[p[0].to_sym].zip(r.last).map(&:sum)) }; r } }
        .map { |l| l.to_h { |a| [a[0..1], a[2]] } }

p (w[0].keys & w[1].keys).map { |k| w[0][k] + w[1][k] }.sort[1]
