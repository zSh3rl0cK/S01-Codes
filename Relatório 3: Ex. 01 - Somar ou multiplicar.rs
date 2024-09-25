use std::io;

fn main() {
    let mut num1 = String::new();
    let mut num2 = String::new();
    let mut opcao = String::new();

    println!("Digite o primeiro número:");
    io::stdin().read_line(&mut num1).expect("Erro");
    let num1: i32 = num1.trim().parse().expect("Invalido");

    println!("Digite o segundo número:");
    io::stdin().read_line(&mut num2).expect("Erro");
    let num2: i32 = num2.trim().parse().expect("Invalido");

    println!("Escolha a operação: Somar (+) ou multiplicar (*)");
    io::stdin().read_line(&mut opcao).expect("Erro.");
    let opcao = opcao.trim();

    if opcao == "+"{
        println!("Resultado: {}", num1 + num2);
    } 
    else if opcao == "*"{
        println!("Resultado: {}", num1 * num2);
    } 
    else{
        println!("Operação inválida.");
    }
}
