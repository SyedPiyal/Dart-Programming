import 'dart:io';

void main() {
  String classification = stdin.readLineSync()!;
  String type = stdin.readLineSync()!;
  String diet = stdin.readLineSync()!;

  if (classification == 'vertebrado') {
    if (type == 'mamifero') {
      if (diet == 'onivoro') {
        print('homem');
      } else if (diet == 'herbivoro') {
        print('vaca');
      }
    } else if (type == 'ave') {
      if (diet == 'carnivoro') {
        print('aguia');
      } else if (diet == 'onivoro') {
        print('pomba');
      }
    }
  } else if (classification == 'invertebrado') {
    if (type == 'inseto') {
      if (diet == 'hematofago') {
        print('pulga');
      } else if (diet == 'herbivoro') {
        print('lagarta');
      }
    } else if (type == 'anelideo') {
      if (diet == 'hematofago') {
        print('sanguessuga');
      } else if (diet == 'onivoro') {
        print('minhoca');
      }
    }
  }
}
