import 'dart:io';

/// find smallest number in a list
///

void main() {
  stdout.write("Enter Numbers with space: ");
  List<String> input = stdin.readLineSync()!.trim().split(" ");
  List <int> numbers = input.map(int.parse).toList();
  int smallestNumber = numbers[0];

  for (int i = 0; i < input.length; i++) {
    if (numbers[i] < smallestNumber) {
      smallestNumber = numbers[i];
    }
  }

  print(smallestNumber);
}
