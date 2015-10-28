require_relative '../lib/fraccion'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    def test_simple
        assert_equal("(5/8)", Fraccionarios.new(5,8).imprimir)           #nos aseguramos que imprime
        assert_equal(12, Fraccionarios.new(24,36).mcd(24,36))
        assert_equal(72, Fraccionarios.new(24,36).mcm(24,36))
        assert_equal([2,3], Fraccionarios.new(24,36).simplificar(24,36))         #nos aseguramos que simplifica
    end
    
    def test_sumar
        assert_equal([25,24], Fraccionarios.new(4,6).sumar(3,8))
    end
    
    def test_multiplicar
        assert_equal([1,4], Fraccionarios.new(4,6).multiplicar(3,8))
    end
    
    def test_restar
        assert_equal([7,24], Fraccionarios.new(4,6).restar(3,8))
    end
    
    def test_dividir
        assert_equal([16,9], Fraccionarios.new(4,6).dividir(3,8))
    end
end