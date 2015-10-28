require "/home/ubuntu/workspace/lib/fraccion"
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def setup
    @origen = Fraccionarios.new(2,5)
    @unidad = Fraccionarios.new(7,9)
  end
  
  def test_simple
    assert_equal("(-7/9)", (-@unidad).imprimir)
    assert_equal([53,45], (@origen + @unidad))
    assert_equal([14,45], (@origen * @unidad))
    assert_equal([-17,45], (@origen - @unidad))
    #assert_equal([18,35], (@origen / @unidad))
  end
  
end
  