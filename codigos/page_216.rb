class Engrenagem
  attr_reader :roda_dentada, :marcha, :roda, :observador
  def initialize(argumentos)
    # ...
    @observador = argumentos[:observador]
  end

  # ...

  def estabelecer_marcha(nova_marcha)
    @marcha = nova_marcha
    mudou
  end

  def estabelecer_roda_dentada(nova_roda_dentada)
    @roda_dentada = nova_roda_dentada
    mudou
  end

  def mudou
    observador.mudou(roda_dentada, marcha)
  end
end
