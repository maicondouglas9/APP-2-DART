//Aula 3

void main() {
  Funcionario f = Funcionario(
    nome: "Astrogildo Ribeiro",
    telefone: "(11) 12345-1234",
    email: "astrogildo@gmail.com",
    cargo: "Almoxarifado",
  );
  
  print(f);
}

//Exemplo de classes abstratas e herança
abstract class Pessoa {
  String? _email;
  String? _telefone;

  Pessoa({String email = "", String telefone = ""}) {
    this._email = email;
    this._telefone = telefone;
  }

  String? get email => this._email;
  String? get telefone => this._telefone;

  set email(String? valor) => this._email = valor;
  set telefone(String? valor) => this._telefone = valor;

  String toString() {
    return "Email: ${this._email}\n Telefone: ${this._telefone}\n";
  }
}

//Classe que vai herdar da classe Pessoa
class Funcionario extends Pessoa {
  String? _cargo;
  String? _nome;

  Funcionario({
    required String nome,
    required String telefone,
    String email = "",
    String cargo = "",
  }) {
    this._nome = nome;
    this._cargo = cargo;
    super._telefone = telefone;
    super._email = email;
  }

  String? get nome => this._nome;
  String? get cargo => this._cargo;

  set nome(String? valor) => this._nome = valor;
  set cargo(String? valor) => this._cargo = valor;

  String toString() {
    return "Nome: ${this._nome}\n"
        "Telefone: ${super._telefone}\n"
        "Cargo: ${this._cargo}\n"
        "Email: ${super._email}";
  }
}
