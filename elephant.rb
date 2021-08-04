class Elephant

    def initialize()
    end

    def calcularRecibo(cant=0, precio=0, estado="XX")
        if(estado == "XX")
            @val = ((cant.to_i * precio.to_i) * 1.1).round(4)
        else
            @val = ((cant.to_i * precio.to_i) * 1.2).round(4)
        end
        puts @val

    end
end

elephant= Elephant.new 
elephant.calcularRecibo(ARGV[0], ARGV[1], ARGV[2])
