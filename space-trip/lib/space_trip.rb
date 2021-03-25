class SpaceTrip
  def travel(planets, moves)
    uniq_planets, hash_with_distances = format_list(planets, Hash.new)
    uniq_planets.permutation(moves).map do |array_planets|
      array_planets.each_cons(2).map do |planet_a, planet_b|
        hash_with_distances.dig(planet_a, planet_b) || hash_with_distances.dig(planet_b, planet_a)
      end.sum
    end.min
  end

  def format_list(planets, hash)
    formatted_planets = planets.split("\n")
                               .map { |el| el.split(' ') }
                               .each do |el|
      if el[2] == 'para'
        el[0] += el.delete_at(1)
      elsif el.size > 5
        el[2] += el.delete_at(3)
      end
      hash[el[0]] = {} if hash[el[0]].nil?
      hash[el[0]][el[2]] = el[4].to_i
    end
    uniq_planets = (formatted_planets.map(&:first) + formatted_planets.map(&:third)).uniq
    [uniq_planets, hash]
  end
end
