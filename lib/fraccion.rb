class Fraccionarios
    
    attr_reader :numerador, :denominador
    #constructor/inicializador
    def  initialize(n, d)
        @numerador=n
        @denominador=d
        
        simplificar
    end

    #imprimir número
    def imprimir
        "(#{@numerador}/#{@denominador})" 
    end
    
    #Máximo común divisor
    def mcd(x,y)
        x, y = x.abs, y.abs
        while y != 0            #mientras no se llegue al máximo seguimos en el bucle
            x, y = y, x % y
        end
        return x
    end
    
    def mcm(x,y)
        x, y = x.abs, y.abs
        return (x/mcd(x,y) * y)
    end
    
    def simplificar
        x , y = @numerador, @denominador
        @numerador = @numerador/(mcd(x,y))
        @denominador = @denominador/(mcd(x,y))
    end
        
end