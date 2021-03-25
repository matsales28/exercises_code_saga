class Sequence
  def count_ordered(list)
    response = list.map do |el|
      person, days = el.split(':')
      days_sorted = days.split(' ').map(&:to_i).sort
      chunked = days_sorted.chunk_while { |a, b| a + 1 == b }.map(&:size).sort.uniq
      [person, chunked, chunked.size]
    end.each_with_object(['', [], 0]) do |el, memo|
      next unless el[1].last > memo[1].last.to_i || (el[1].last == memo[1].last.to_i && el[2] > memo[2])

      memo[2] = el[2]
      memo[1] = el[1]
      memo[0] = el[0]
      next
    end
    response[1] = response[1].join(' ')
    response.pop
    response.join(':')
  end
end
