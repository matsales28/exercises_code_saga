class FileParser
  def to_binary_file(string)
    string.split(';')
          .map { |el| to_base02(el.to_i) }
          .join("\n")
          .then { |string| File.write('data/data.txt', string) }
  end

  def to_base02(string)
    string.to_s(2)
  end
end
