class Sudoku
  def check(list)
    list.uniq == list && list.size == 9
  end
end
