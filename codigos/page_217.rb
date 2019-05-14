class EngrenagemTest < MiniTest::Unit::TestCase

  def setup
    @observador = MiniTest::Mock.new
    @engrenagem = Engrenagem.new(
                    roda_dentada: 52,
                    marcha:       11,
                    observador:   @observador)
  end

  def test_notifica_observador_quando_marcha_muda
    @observador.expect(:mudou, true, [52, 27])
    @engrenagem.estabelecer_marcha(27)
    @observador.verify
  end

  def test_notifica_observador_quando_roda_dentada_muda
    @observador.expect(:mudou, true, [42, 11])
    @engrenagem.estabelecer_roda_dentada(42)
    @observador.verify
  end
end
