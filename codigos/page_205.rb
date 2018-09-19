class Engrenagem
  attr_reader :roda_dentada, :marcha, :roda
  def initialize(argumentos)
    @roda_dentada = argumentos[:roda_dentada]
    @marcha       = argumentos[:marcha]
    @roda         = argumentos[:roda]
  end

  def polegadas
    # O objeto na variável roda desempenha
    #   o papel 'Diameterizável'.
    relacao * roda.diametro
  end

  def relacao
    roda_dentada / marcha.to_f
  end
#...
end
