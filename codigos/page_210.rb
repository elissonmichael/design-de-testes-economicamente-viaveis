# Cria um ator do papel 'Diameterizável'
class DiametroDuble
  def diametro
    10
  end
end

class EngrenagemTest < MiniTest::Unit::TestCase
  def test_calculo_polegadas
    engrenagem = Engrenagem.new(
                  roda_dentada: 52,
                  marcha:       11,
                  roda:         DiametroDuble.new)

    assert_in_delta(42.27, engrenagem.polegadas, 0.01)
  end
end
