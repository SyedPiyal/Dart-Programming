import 'dart:io';

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  var d = (a+b+a*b*c*(a-b))/2;
  print("$d eh o maior");
}