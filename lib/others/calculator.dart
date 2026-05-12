import 'dart:io';

///Write a Dart program that:
//
// Takes two numbers and an operator (+, -, *, /, %)
// Prints the result using the correct operator
// Example
//
// Input:
//
// a = 10
// b = 3
// op = "%"
//
// result:
//
// 1

/// check for empty
/// check for double
/// check for string

void main() {
  stdout.write("Enter 1st number: ");
  String? num1 = stdin.readLineSync();

  stdout.write("Enter 2nd number: ");
  String? num2 = stdin.readLineSync();

  stdout.write("Enter operator (+,-,*,/) : ");
  String? oprt = stdin.readLineSync()?.toLowerCase();

  if (num1 == null || num2 == null || oprt == null) {
    print("Invalid :Field can not be empty");
    return;
  }
  double? a = double.tryParse(num1.trim());
  double? b = double.tryParse(num2.trim());

  if (a == null || b == null) {
    print("Invalid Number");
    return;
  }
  double? result = 0.0;
  switch (oprt) {
    case "+":
      {
        result = (a + b);
        break;
      }
    case "-":
      {
        result = (a - b);
        break;
      }
    case "*":
      {
        result = (a * b);
        break;
      }
    case "/":
      {
        if (b == 0) {
          print("Can not divider by zero");
          return;
        }
        result = (a / b);
        break;
      }
    case "%":
      {
        if (b == 0) {
          print("Remainder by zero is not possible");
          return;
        }
        result = (a % b);
        break;
      }
    default:
      print("Invalid Operator");
  }
  print("Result : $result");
}
