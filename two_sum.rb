def two_sum numbers, target
  hsh = {}

  (0...numbers.length).each do |n|
    if hsh.include?(target - numbers[n])
      return [hsh[target - numbers[n]] + 1, n + 1]
    else
      hsh[numbers[n]] = n
    end
  end
end

numbers = [1, 3, 5, 7]
target = 8

p two_sum(numbers, target)
