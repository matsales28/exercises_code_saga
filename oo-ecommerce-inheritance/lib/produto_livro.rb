class ProdutoLivro < Produto
  attr_accessor :genero, :autor, :paginas
  def initialize(nome:, categoria: Categoria.new, preco:, estoque:, autor:, genero:, paginas:)
    super(nome: nome, preco: preco, estoque: estoque)
    @paginas = paginas
    @genero = genero
    @autor = autor
  end
end