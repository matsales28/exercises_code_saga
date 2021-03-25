class DataFinder
  MAGIC_NUMBER = 1984
  def find_and_multiply(list)
    subtract_equals_magic_number = ->((a, b)) { a * b if (a - b).abs == MAGIC_NUMBER }
    list.combination(2).filter_map(&subtract_equals_magic_number).sum
  end
end
