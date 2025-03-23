///
/// binary search
/// Maximum Count of Positive Integer and Negative Integer
///
void main() {
  List<int> list = [-3, -2, -1, 0, 0, 1, 2];
  int result = maximumCount(list);
  print(result);
}

int maximumCount(List<int> list) {
  int a = list.length - search(list, 1);
  int b = search(list, 0);
  return a > b ? a : b;
}

int search(List<int> nums, int x) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (nums[mid] >= x) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }
  return left;
}
