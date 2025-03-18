///
/// binary search
///
void main() {
  List<int> list = [-1,0,3,5,9,12];
  int target = 9;
  int result = searchNum(list, target);
  print(result);

}

int searchNum(List<int> list, int target) {
  int first = 0;
  int last = list.length - 1;
  while (first <= last) {
    int mid = last + (first - last) ~/ 2;

    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      first = mid + 1;
    } else {
      last = mid - 1;
    }
  }
  return -1;
}
