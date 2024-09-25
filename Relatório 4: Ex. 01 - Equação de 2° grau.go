package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64

	fmt.Print("Digite os valores de a, b e c: ")
	fmt.Scan(&a, &b, &c)

	delta := b*b - 4*a*c

	x1 := (-b + math.Sqrt(delta)) / (2 * a)
	x2 := (-b - math.Sqrt(delta)) / (2 * a)

	if delta < 0{
		fmt.Printf("Não existem raizes reais")
	} else{
		fmt.Printf("As raízes da equação são: %.2f e %.2f\n", x1, x2)
	}
}
