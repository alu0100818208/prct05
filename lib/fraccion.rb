class Fraccionarios
    
    attr_reader :numerador, :denominador
    #constructor/inicializador
    def  initialize(n, d)
        @numerador=n
        @denominador=d
        
        @numerador, @denominador = simplificar(@numerador, @denominador)
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
    
    #Mínimo común múltiplo
    def mcm(x,y)
        x, y = x.abs, y.abs
        return (x/mcd(x,y) * y)
    end
    
    def simplificar(x, y)
        aux1 , aux2 = x , y
        x = x/(mcd(aux1,aux2))
        y = y/(mcd(aux1,aux2))
        return x,y
    end
    
    def sumar(n,d)
        if d == @denominador
            n += @numerador
        else
            n = n*(mcm(d,@denominador)/d) + @numerador*(mcm(d,@denominador)/@denominador)
            d = mcm(d,@denominador)
            simplificar(n, d)
        end
        
        return n,d
    end
        
end