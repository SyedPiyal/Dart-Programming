///
/// binary search
/// Find Smallest Letter Greater Than Target
///
void main (){
  List<String> letters = ["c", "f", "j"];
  String target = "a";

  print(nextGreatestLetter(letters, target)); 
}

String nextGreatestLetter(List<String> list,String target){
  int start = 0;
  int end = list.length-1;
  while(start<=end){
    int mid = start+(end-start)~/2;

    if(list[mid].compareTo(target)>0){
      end = mid -1;
    }else{
      start = mid+1;
    }
  }
  return list[start % list.length];
}