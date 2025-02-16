import 'dart:io';

void main() {
  double? givenNum = double.tryParse(stdin.readLineSync() ?? "");
  double newSalary = 0.0;
  double moneyEarned = 0.0;
  int InPercentage = 0;

  if (givenNum != null) {
    if (givenNum <= 400.00) {
      moneyEarned = (15 / 100) * givenNum;
      newSalary = givenNum + moneyEarned;
      InPercentage = 15;
    } else if (givenNum > 400.00 && givenNum <= 800.00) {
      moneyEarned = (12 / 100) * givenNum;
      newSalary = givenNum + moneyEarned;
      InPercentage = 12;
    }else if (givenNum > 800.00 && givenNum <= 1200.00) {
      moneyEarned = (10 / 100) * givenNum;
      newSalary = givenNum + moneyEarned;
      InPercentage = 10;
    }else if (givenNum > 1200.00 && givenNum <= 2000.00) {
      moneyEarned = (7 / 100) * givenNum;
      newSalary = givenNum + moneyEarned;
      InPercentage = 7;
    }else if (givenNum > 2000.00) {
      moneyEarned = (4 / 100) * givenNum;
      newSalary = givenNum + moneyEarned;
      InPercentage = 4;
    }
  }

  print(
      "Novo salario: ${newSalary.toStringAsFixed(2)}");
  print(
      "Reajuste ganho: ${moneyEarned.toStringAsFixed(2)}");

  print(
      "Em percentual: ${InPercentage} %");



}
