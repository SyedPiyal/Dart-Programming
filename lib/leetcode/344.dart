///
/// Reverse String
/// list + two pointer
///

void main() {
  // List<String> list = ["a", "s", "d", "f", "g"];
  List<int> list = [1, 3, 5, 7, 9];
  var result = reverseString(list);
  print(result);
}

List<int> reverseString(List<int> stringList) {
  var i = 0;
  var j = stringList.length - 1;

  while (i < j) {
    var temp = stringList[i];
    stringList[i] = stringList[j];
    stringList[j] = temp;
    i++;
    j--;
  }

  return stringList;
}
