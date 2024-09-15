#include <iostream>
#include <string>
#include <locale.h>
using namespace std;

class pessoa {
public:
    int idade;
    string nome;

    // Construtor
    pessoa(int idade, string nome) {
        this->idade = idade;
        this->nome = nome;
    }

    // Métodos virtuais
   string seu_nome() const {
        return "O nome é: " + nome;
    }

   int sua_idade() const{
        return idade;
    }
};

class aluno : public pessoa {
private:
    int matricula;

public:
    // Construtor herdado
    aluno(int idade, string nome, int matricula) : pessoa(idade, nome) {
        this->matricula = matricula;
    }
	
	string seu_nome() const override {
        return "O nome do aluno é: " + nome;
    }
	
	int getMat(){
		return matricula;
	}
};

class professor : public pessoa {
public:
    // Construtor herdado
    professor(int idade, string nome) : pessoa(idade, nome) {}
    
    // Sobrescrevendo o método seu_nome para incluir "professor"
    string seu_nome() const override {
        return "O nome do professor é: " + nome;
    }
};

int main() {
	setlocale(LC_ALL, "");
	
    // Criando um aluno
    aluno a1(19, "Pedro", 529);
    cout << a1.seu_nome() << endl;
    cout << "Idade: " << a1.sua_idade() << endl;
    cout << "Matrícula: " << a1.getMat() << endl;

    // Criando um professor
    cout << endl;
    professor pr1(32, "Marcelo");
    cout << pr1.seu_nome() << endl;
    cout << "Idade: " << pr1.sua_idade() << endl;
    
    // criando uma "pessoa"
    cout << endl;
    pessoa ps1(999, "cthulhu");
    cout << ps1.seu_nome() << endl;
    cout << "Idade: " << ps1.sua_idade() << endl;

    return 0;
}
