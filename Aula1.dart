//->Comentario

/*
Comentario de bloco
*/
//Função elemental

import 'dart:math';

void main() {
//print, envia um texto para o console
print('Ola Mundo!\n');
print("------ APPII Aula 1 ------\n");

//var = declaração de variavel genérica
var nome = "Maicon";
var sobrenome = "Cardoso";

//Interpolação de texto (string)
print('$nome $sobrenome\n');

//Constantes: const e final
const double num_pi = 3.1415;
final DateTime data = DateTime.now();

print('PI = $num_pi');
print('Data = $data\n');

//Uso do tipo de dado dynamic
dynamic valor = "Um texto...";
print(valor is String);

valor = 10;
print(valor is int);

//Chamando função externa
print('\nÁrea do retângulo 5.6 x 7.4: ');
print(areaRetangulo(5.6, 7.4));

print('\nÁrea do trapézio: ');
print(areaTrapezio(a: 3.9, bMaior: 4.3, bMenor: 5.7));

//Delta e bhask
print('\nCalcular delta');
print(calcularDelta(-1,1,-6));

print('\nBhaskara:');
bhask(-1, 1, -6);

}

//Funçôes
double areaRetangulo(double b, double a) {
return b * a;
}

double areaTrapezio({double bMenor = 0, double bMaior = 0, double a = 0}) {
return ((bMaior + bMenor) * a) / 2;
}

double calcularDelta(double b, double a, double c){

return (bb)-((4a)*c);

}

void bhask(double a, double b, double c) {
double delta = calcularDelta(a, b, c);

if (delta < 0) {
print("A equação não possui raízes reais");
return;
}

double raizDelta = sqrt(delta);
double x1 = (-b + raizDelta) / (2 * a);
double x2 = (-b - raizDelta) / (2 * a);

print("O delta é: $delta");
print("A raiz x1 é: $x1");
print("A raiz x2 é: $x2");
}

