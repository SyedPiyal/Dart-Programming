import 'dart:io';

///Sum, Difference, Product
//
// Write a Dart program that takes two integers and prints:
//
// Their sum
// Difference
// Product
// Example
//
// Input:
//
// a = 10
// b = 5
//
// Output:
//
// Sum = 15
// Difference = 5
// Product = 50

///exception
/// user input noting--
/// user input only one number
/// user input number + string

void main() {
  stdout.write("Enter two number without any space: ");
  String? input = stdin.readLineSync();
  if (input == null || input.trim().isEmpty) {
    print("Invalid:Enter Numbers");
    return;
  }
  List data = input.trim().split(RegExp(r"\s+"));
  print(data.length);
  if (data.length < 2) {
    print("Enter valid numbers");
    return;
  }
  if (data.length > 2) {
    print("Enter valid numbers");
    return;
  }
  int? a = int.tryParse(data[0]);
  int? b = int.tryParse(data[1]);

  if (a == null || b == null) {
    print("Invalid Number");
    return;
  }
  print("sum:${a + b}");
  print("difference:${a - b}");
  print("product:${a * b}");
}
