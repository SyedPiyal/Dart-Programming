///
/// Move Zeroes
/// List + Two pointers
///

void main() {
  List<int> list = [1, 3, 0, 5, 0, 7, 0, 8];
  var listData = moveZeros(list);
  print(listData);
}

List<int> moveZeros(List<int> list) {
  int j = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] != 0) {
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
      j++;
    }
  }

  return list;
}
