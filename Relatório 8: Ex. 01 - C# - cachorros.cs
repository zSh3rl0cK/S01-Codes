using System;

public class Dog
{
    public string Name { get; set; }
    public int Age { get; set; }

    public Dog(string name, int age)
    {
        Name = name;
        Age = age;
    }

    public virtual void showName()
    {
        Console.WriteLine($"O nome do cachorro é {Name}");
    }

    public virtual void showIdade()
    {
        Console.WriteLine($"A idade do cachorro é {Age}");
    }
}

public class CachorroGrande : Dog
{
    private int Tamanho;

    public CachorroGrande(string name, int age, int tamanho) : base(name, age)
    {
        Tamanho = tamanho;
    }

    public override void showIdade()
    {
        Console.WriteLine($"Este é um cachorro grande com {Age} anos de idade");
    }

    public void showTamanho()
    {
        Console.WriteLine($"O tamanho do cachorro é {Tamanho}");
    }
}

public class CachorroPequeno : Dog
{
    public CachorroPequeno(string name, int age) : base(name, age) { }

    public override void showIdade()
    {
        Console.WriteLine($"Este é um cachorro pequeno com {Age} anos de idade");
    }
}

class Program
{
    static void Main()
    {
        Dog dog = new Dog("Fujiwara", 16);
        CachorroGrande dogao = new CachorroGrande("Totoro", 300, 120);
        CachorroPequeno doguin = new CachorroPequeno("Stark", 13);

        dog.showName();
        dog.showIdade();

        dogao.showName();
        dogao.showIdade();
        dogao.showTamanho();

        doguin.showName();
        doguin.showIdade();
    }
}
