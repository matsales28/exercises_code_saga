class WordHunter
  def hunt(matrix, words)
    words.split(' ').select do |word|
      [matrix, matrix.transpose].any? do |ma|
        ma.any? do |row|
          row.join('').include?(word) || row.reverse.join('').include?(word)
        end
      end
    end.sort.join(' ')
  end
end
