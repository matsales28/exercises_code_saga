class FileParser
  def to_integer(string)
    string.to_i(2)
  end

  def convert(file)
    file = File.open(file)
    string = file.read
    string.split("\n")
          .map { |el| to_integer(el) }
          .sum
  end
end
