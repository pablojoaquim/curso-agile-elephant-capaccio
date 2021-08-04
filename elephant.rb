class Elephant

    def initialize()
    end

    def calcularRecibo(cant=0, precio=0, estado="XX")
        puts cant.to_i
        @val = cant.to_i * 10 + 2
        puts @val

    end
end

elephant= Elephant.new 
elephant.calcularRecibo(ARGV[0], ARGV[1], ARGV[2])
