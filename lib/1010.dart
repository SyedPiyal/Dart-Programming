import 'dart:io';

void main() {
  List<String> input1=stdin.readLineSync()!.split(" ");
  int a1=int.parse(input1[0]);
  int a2=int.parse(input1[1]);
  double a3=double.parse(input1[2]);

  List<String> input2=stdin.readLineSync()!.split(" ");
  int b1=int.parse(input2[0]);
  int b2=int.parse(input2[1]);
  double b3=double.parse(input2[2]);

  double totalA = a2*a3;
  double totalB = b2*b3;
  double total = totalA + totalB;

  print("VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}");
}
