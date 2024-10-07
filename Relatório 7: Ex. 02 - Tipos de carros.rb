class Carro
  def initialize(nome, modelo)
    @nome = nome
    @modelo = modelo
  end

  def tipo
    puts("O carro #{@nome} é um veículo da marca #{@modelo}")
  end
end

class CarroSedan < Carro
  def tipo
    puts("O carro #{@nome} é um sedan da marca #{@modelo}")
  end
end

class CarroEsportivo < Carro
  def tipo
    puts("O carro #{@nome} é um carro esportivo da marca #{@modelo}")
  end
end

carro1 = Carro.new("Fusca", "Volkswagen")
carro2 = CarroSedan.new("Onix", "Chevrolet")
carro3 = CarroEsportivo.new("Sesto Elemento", "Lamborghini")

carro1.tipo
carro2.tipo
carro3.tipo
