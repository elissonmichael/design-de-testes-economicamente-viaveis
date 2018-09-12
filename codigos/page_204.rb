class EngrenagemTest < MiniTest::Unit::TestCase

  def test_calculo_polegadas
    engrenagem = Engrenagem.new(
                  roda_dentada: 52,
                  marcha:       11,
                  aro:          26,
                  roda:         1.5)

    assert_in_delta(137.1, engrenagem.polegadas, 0.01)
  end

end
