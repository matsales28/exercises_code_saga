class Arrays
  def self.multiplica_indices(array)
    array.map.with_index { |el, i| el*i }
  end
end
