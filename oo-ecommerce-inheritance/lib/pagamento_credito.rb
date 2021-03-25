class PagamentoCredito < Pagamento
  attr_accessor :juros
  def initialize(quantidade:, juros:, produto:)
    super(quantidade: quantidade, produto: produto)
    @juros = juros
  end

  def atualizar_valor
    self.valor *= 1 + juros/100.to_f
  end
end
