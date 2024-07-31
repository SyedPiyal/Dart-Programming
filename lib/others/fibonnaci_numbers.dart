import 'dart:io';

// Question --> Write a program that asks the user how many Fibonnaci numbers to generate and then generates them.

void main() {
  print('Enter How many fibonacci number you want : ');
  int chosenNumber = int.parse(stdin.readLineSync() ?? "");

  List<int> result = fiboNumber(chosenNumber);
  print(result);
}

List<int> fiboNumber(int chosenNumber) {
  List<int> fiboList = [1, 1];
  for (var i = 0; i < chosenNumber; i++) {
    fiboList.add(fiboList[i] + fiboList[i + 1]);
  }
  return fiboList;
}
