
import 'dart:io';

void main(){
  int maxValue = -1;
  int posititon = 0;

  for(int i =1;i<=100;i++){
    int? n = int.tryParse(stdin.readLineSync()??"");
    if(n!>maxValue){
      maxValue = n;
      posititon =i;
    }
  }
  print(maxValue);
  print(posititon);
}