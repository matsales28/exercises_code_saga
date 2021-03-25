class Pagamento
  attr_reader :quantidade, :produto, :preco
  attr_accessor :valor
  def initialize(quantidade:, produto: 'Sem nome', preco:)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = quantidade * preco
  end

  def aplicar_desconto(quantidade)
    self.valor -= quantidade
  end
end
