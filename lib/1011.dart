import 'dart:io';
import 'dart:math';

void main() {
  double pi = 3.14159;
  int R = int.parse(stdin.readLineSync()!);
  double VOLUME =(4/3)*pi*pow(R,3);
  print("VOLUME = ${VOLUME.toStringAsFixed(3)}");
}
