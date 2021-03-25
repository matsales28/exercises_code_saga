class MisteryNumber
  def calculate(operation)
    (0..).each { |el| return el if eval(operation.gsub(/[?=]/, '?' => el, '=' => '==')) }
  end
end
