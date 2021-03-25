class Produto
  attr_reader :nome, :preco, :estoque, :categoria
  
  def initialize(nome:, categoria: Categoria.new.nome, preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end
