class Spirardigrada
  def devour(matrix)
    array = []
    next_movement = :right
    while matrix.present?
      next_movement = right_movement(matrix, array) if next_movement == :right && matrix.present?
      next_movement = down_movement(matrix, array) if next_movement == :down && matrix.present?
      next_movement = left_movement(matrix, array) if next_movement == :left && matrix.present?
      next_movement = up_movement(matrix, array) if next_movement == :up && matrix.present?
    end
    array.join(' ')
  end

  def right_movement(matrix, array)
    matrix.first.size.times do
      array << matrix.first.shift
    end
    matrix.shift
    :down
  end

  def down_movement(matrix, array)
    a = 0
    matrix.size.times do
      array << matrix[a].pop
      a += 1
    end
    :left
  end

  def left_movement(matrix, array)
    matrix.last.size.times do
      array << matrix.last.pop
    end
    matrix.pop
    :up
  end

  def up_movement(matrix, array)
    movements = matrix.size
    movements.times do
      array << matrix[movements - 1].shift
      movements -= 1
    end
    :right
  end
end
