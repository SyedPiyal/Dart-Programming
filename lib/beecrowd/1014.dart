import 'dart:io';

void main(){
  int a = int.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);

  var c = a/b;
  print("${c.toStringAsFixed(3)} km/l");


}