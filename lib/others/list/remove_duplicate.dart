/// remove duplicate form list
///


void main(){
  List a = [12,25,16,80,12,16,60,55];
  List<int> b = [];

  for(int i=0;i<a.length;i++){
    if(!b.contains(a[i])){
      b.add(a[i]);
    }
  }
  print(b);
}