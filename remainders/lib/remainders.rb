class Remainders
  def calculate(string)
    zero_rest = ->((a, b)) { a + b if (a % b).zero? || (b % a).zero? }
    string.split(' ').map(&:to_i).combination(2).filter_map(&zero_rest).sum
  end
end
