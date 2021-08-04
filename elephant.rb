class Elephant

    def initialize(cant=0, precio=0, estado="XX")
        @cant = cant.to_i
        @precio = precio.to_i
        @estado = estado
    end

    def calcularRecibo()
        @impuesto = 1
        case @estado
        when "UT"
            @impuesto = 1.0685
        when "NV"
            @impuesto = 1.08
        end
        
        @descuento = 1
        if(@precio <= 10)
            @descuento = 0.95
        end

        @val = ((@cant * @precio) * @impuesto * @descuento).round(4)
        puts @val

    end
end

elephant= Elephant.new(ARGV[0], ARGV[1], ARGV[2])
elephant.calcularRecibo()
