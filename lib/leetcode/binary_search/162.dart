///
/// binary search
/// Find Peak Element
///
void main() {
  List<int> nums = [1,2,1,3,5,6,4];
  print(peakElement(nums));
}

int peakElement(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    int mid = left + (right - left) ~/ 2;

    if (nums[mid] > nums[mid + 1]) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }
  return left;
}
