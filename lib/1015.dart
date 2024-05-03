import 'dart:io';
import 'dart:math';


void main() {
  List<String> list = stdin.readLineSync()!.split(' ');
  double x1 = double.parse(list[0]);
  double y1 = double.parse(list[1]);

  List<String> list1 = stdin.readLineSync()!.split(' ');
  double x2 = double.parse(list1[0]);
  double y2 = double.parse(list1[1]);

  double distance = sqrt(pow(x2-x1, 2)+pow(y2-y1, 2));

  print(distance.toStringAsFixed(4));

}
