///
/// Search Insert Position
/// binary search
///

void main() {
  List<int> nums = [1, 3, 5, 6];
  int target = 5;

  int result = searchPosition(nums, target);
  print(result);
}

int searchPosition(List<int> list, int target) {
  int start = 0;
  int end = list.length - 1;

  while (start <= end) {
    int mid = end + (start - end) ~/ 2;

    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}
