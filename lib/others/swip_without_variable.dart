import 'dart:io';

///Bitwise Operators — Swap Without Third Variable
//
// Problem:
// Swap two integers using bitwise XOR operator.
//
// Example
//
// Input:
//
// a = 5
// b = 9
//
// Output:
//
// a = 9
// b = 5

// Operators to Use
// ^

/// check for null
/// check for string
/// check for number + string
/// check if two number are same

void main() {
  stdout.write("Enter first int number : ");
  int a = int.tryParse(stdin.readLineSync()?.trim() ?? "") ?? 0;
  stdout.write("Enter second int number : ");
  int b = int.tryParse(stdin.readLineSync()?.trim() ?? "") ?? 0;

  if (a == b) {
    print("Error:Both number are same. No swapping need ");
    return;
  }
  print("Before Swip: a=$a b=$b");

  a = a ^ b;
  b = a ^ b;
  a = a ^ b;

  print("swip number is : a=$a b=$b");
}
