class Roda
  attr_reader :aro, :pneu
  def initialize(aro, pneu)
    @aro  = aro
    @pneu = pneu
  end

  def largura # <--- Costumava ser 'diametro'
    aro + (pneu * 2)
  end
#...
end
