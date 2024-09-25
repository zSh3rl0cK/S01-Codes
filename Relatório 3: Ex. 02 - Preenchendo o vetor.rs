use std::io;

fn preenche_array(array: &mut [i32], num: i32, i: usize) {
    array[i] = i as i32 * num;
}

fn main() {
    let mut array = [0; 11];

    for i in 0..11 {
        let mut num = String::new();

        println!("Insira um numero");
        io::stdin().read_line(&mut num).expect("Erro");

        let num: i32 = num.trim().parse().expect("inválido");
        preenche_array(&mut array, num, i);
    }

    println!("Array preenchido: {:?}", array);
}
