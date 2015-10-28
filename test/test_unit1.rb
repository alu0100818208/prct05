require_relative '../lib/fraccion'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    def test_simple
        assert_equal("(5/8)", Fraccionarios.new(5,8).imprimir)           #nos aseguramos que imprime
        assert_equal(12, Fraccionarios.new(24,36).mcd(24,36))
        assert_equal(72, Fraccionarios.new(24,36).mcm(24,36))
        assert_equal("(2/3)", Fraccionarios.new(24,36).imprimir)         #nos aseguramos que simplifica
    end
end

Fraccionarios.new(5,8).imprimir