class Elephant

    def initialize(cant=0, precio=0, estado="XX")
        @cant = cant.to_i
        @precio = precio.to_i
        @estado = estado
    end

    def calcularRecibo()
        @impuesto = 0.0
        case @estado
        when "UT"
            @impuesto = 6.85
        when "NV"
            @impuesto = 8.0
        when "TX"
            @impuesto = 6.25
        when "AL"
            @impuesto = 4.0
        when "CA"
            @impuesto = 8.25
        end
        
        @descuento = 0
        @compra = (@cant * @precio)
        if(@compra > 1000 && @compra <= 5000)
            @descuento = 3
        elsif(@compra > 5000 && @compra <= 7000)
            @descuento = 5
        elsif(@compra > 7000 && @compra <= 10000)
            @descuento = 7           
        elsif(@compra > 10000 && @compra <= 50000)
            @descuento = 10 
        elsif(@compra > 50000)
            @descuento = 15                
        end

        @operacionB = @compra * (1+@impuesto/100)
        @operacionByDescuento = (@operacionB * ((100-@descuento).to_f/100)).round(3)

        @val = (@operacionByDescuento).round(4)
        puts "#{@cant} * $#{@precio} = $#{@compra}"
        puts "#{@estado} (%#{@impuesto}) = $#{@operacionB - @compra}"
        puts "DTO(#{@descuento}%) = $#{(@operacionB - @operacionByDescuento).round(3)}"
        puts "Total = $#{@val}"

    end
end

elephant= Elephant.new(ARGV[0], ARGV[1], ARGV[2])
elephant.calcularRecibo()
