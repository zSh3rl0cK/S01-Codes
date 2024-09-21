class Animal {
  constructor(nome, idade, especie) {
    this.nome = nome;
    this.idade = idade;
    this.especie = especie;
  }

  printInfo() {
    console.log(`Nome: ${this.nome}`);
    console.log(`Idade: ${this.idade}`);
    console.log(`Espécie: ${this.especie}`);
  }
}

class Cachorro extends Animal {
  #raca;

  constructor(nome, idade, especie, raca) {
    super(nome, idade, especie);
    this.#raca = raca;
  }

  printInfo() {
    super.printInfo();
    console.log(`Raça: ${this.#raca}`);
  }
}

class Gato extends Animal {
  constructor(nome, idade, especie, cores) {
    super(nome, idade, especie);
    this.cores = cores;
  }

  printInfo() {
    super.printInfo();
    console.log(`Cores: ${this.cores.join(", ")}`);
  }
}

const obj1 = new Cachorro("Shirogane", 12, "Cachorro", "husk");
const obj2 = new Gato("Fujiwara", 4, "Gato", ["Preto", "Branco", "Laranja", "Rosa", "Vermelho"]);
const obj3 = new Animal("Arceus", 1000, "pokemon");

obj1.printInfo();
obj2.printInfo();
obj3.printInfo();
