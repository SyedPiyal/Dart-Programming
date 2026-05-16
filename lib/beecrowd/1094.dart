import 'dart:io';

void main() {
  int totalAnimals = 0;
  int rabbits = 0;
  int rats = 0;
  int frogs = 0;

  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    List<String> input = stdin.readLineSync()!.split(" ");
    int amount = int.parse(input[0]);
    String type = input[1];

    totalAnimals +=amount;

    if(type =="C"){
      rabbits += amount;
    }else if(type =="R"){
      rats +=amount;
    }else if(type =="S"){
      frogs +=amount;
    }
  }

  double rabbitPercentage = (rabbits/totalAnimals) * 100;
  double ratPercentage = (rats/totalAnimals) * 100;
  double frogPercentage = (frogs/totalAnimals) * 100;

  print('Total: $totalAnimals cobaias');
  print('Total de coelhos: $rabbits');
  print('Total de ratos: $rats');
  print('Total de sapos: $frogs');
  print('Percentual de coelhos: ${rabbitPercentage.toStringAsFixed(2)} %');
  print('Percentual de ratos: ${ratPercentage.toStringAsFixed(2)} %');
  print('Percentual de sapos: ${frogPercentage.toStringAsFixed(2)} %');
}
