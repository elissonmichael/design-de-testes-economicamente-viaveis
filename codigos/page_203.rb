
class RodaTest < MiniTest::Unit::TestCase
  def test_calcula_diametro
    roda = Roda.new(26, 1.5)
    assert_in_delta(29, roda.diametro, 0.01)
  end
end
