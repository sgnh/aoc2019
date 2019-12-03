def calculate_fuel(mass)
  fuel = [0, mass / 3 - 2].max
  fuel.positive? ? fuel + calculate_fuel(fuel) : fuel
end

p(File.readlines('i').sum { |m| calculate_fuel(m.to_i) })
