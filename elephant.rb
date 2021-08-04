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
        when "TX"
            @impuesto = 1.0625
        when "AL"
            @impuesto = 1.04
        when "CA"
            @impuesto = 1.0825
        end
        
        @descuento = 1
        if(@precio <= 1000)
            @descuento = 0.97
        elsif(@precio <= 5000) 
            @descuento = 0.95
        elsif(@precio <= 7000) 
            @descuento = 0.93            
        elsif(@precio <= 10000) 
            @descuento = 0.90 
        elsif(@precio <= 50000) 
            @descuento = 0.85                
        end

        @val = ((@cant * @precio) * @impuesto * @descuento).round(4)
        puts @val

    end
end

elephant= Elephant.new(ARGV[0], ARGV[1], ARGV[2])
elephant.calcularRecibo()
