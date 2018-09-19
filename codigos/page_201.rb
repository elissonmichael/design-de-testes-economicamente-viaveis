class Roda
  attr_reader :aro, :pneu
  def initialize(aro, pneu)
    @aro  = aro
    @pneu = pneu
  end

  def diametro
    aro + (pneu * 2)
  end
#...
end

class Engrenagem
  attr_reader :roda_dentada, :marcha, :aro, :pneu
  def initialize(argumentos)
    @roda_dentada = argumentos[:roda_dentada]
    @marcha       = argumentos[:marcha]
    @aro          = argumentos[:aro]
    @pneu         = argumentos[:pneu]
  end

  def polegadas
    relacao * Roda.new(aro, pneu).diametro
  end

  def relacao
    roda_dentada / marcha.to_f
  end
#...
end
