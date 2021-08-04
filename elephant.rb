class Elephant

    def initialize()
    end

    def calcularRecibo(cant=0, precio=0, estado="XX")
        @val = ((cant.to_i * precio.to_i) * 1.1).round(4)
        puts @val

    end
end

elephant= Elephant.new 
elephant.calcularRecibo(ARGV[0], ARGV[1], ARGV[2])
