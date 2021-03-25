class Windows
  def execute(actions)
    matrix = Array.new(10) { Array.new(10, 1) }
    broken_windows = 0
    actions = actions.split("\n").map { |el| el.split(' ') }
    actions.each { |el| list_of_windows(el, matrix) }
    matrix.each { |el| broken_windows += el.count(&:zero?) }

    broken_windows
  end

  def list_of_windows(array, matrix)
    (array[0][0].to_i..array[1][0].to_i).each do |num|
      (array[0][2].to_i..array[1][2].to_i).each do |num2|
        matrix[num.to_i][num2.to_i] = 0 if array[2] == 'X'
        matrix[num.to_i][num2.to_i] = 1 if array[2] == 'O'
      end
    end
  end
end
