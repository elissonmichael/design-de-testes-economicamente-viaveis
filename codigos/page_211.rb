class RodaTest < MiniTest::Unit::TestCase
  def setup
    @roda = Roda.new(26, 1.5)
  end

  def test_implementa_a_interface_diameterizavel
    assert_respond_to(@roda, :diametro)
  end

  def test_calcula_diametro
    roda = Roda.new(26, 1.5)
    assert_in_delta(29, roda.diametro, 0.01)
  end
end
