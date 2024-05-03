import 'dart:io';


void main() {
  double pi = 3.14159;
  List<String> list = stdin.readLineSync()!.split(' ');
  double A = double.parse(list[0]);
  double B = double.parse(list[1]);
  double C = double.parse(list[2]);

  double TRIANGULO = (1/2) * A * C;
  double CIRCULO = pi * C*C;
  double TRAPEZIO = ((A+B)/2)*C;
  double QUADRADO = B*B;
  double RETANGULO = A*B;

  print("TRIANGULO: ${TRIANGULO.toStringAsFixed(3)}");
  print("CIRCULO: ${CIRCULO.toStringAsFixed(3)}");
  print("TRAPEZIO: ${TRAPEZIO.toStringAsFixed(3)}");
  print("QUADRADO: ${QUADRADO.toStringAsFixed(3)}");
  print("RETANGULO: ${RETANGULO.toStringAsFixed(3)}");
}
