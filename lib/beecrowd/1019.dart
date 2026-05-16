import 'dart:io';
import 'dart:math';


void main() {
  int durationInSeconds = int.parse(stdin.readLineSync()!);
  int hours = durationInSeconds ~/ 3600;
  int minutes = (durationInSeconds % 3600) ~/ 60;
  int seconds = durationInSeconds % 60;
  print("$hours:$minutes:$seconds");

}
