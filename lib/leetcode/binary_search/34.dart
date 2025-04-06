///
/// binary search
/// Find First and Last Position of Element in Sorted Array
///

void main() {
  List<int> nums = [5, 6,7, 8, 9, 10];
  int target = 8;
  var result = searchPosition(nums, target);
  print(result);
}

List<int> searchPosition(List<int> nums, int target) {
  int left = search(nums, target);
  int right = search(nums, target + 1);
  return left == right ? [-1, -1] : [left, right - 1];
}

int search(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (nums[mid] >= target) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }
  return left;
}
