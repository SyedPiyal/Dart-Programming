///
/// Remove Element
/// list + two pointer
///

void main() {
  List<int> nums = [3, 2, 2, 3];
  int val = 3;
  int k1 = removeDuplicates(nums, val);
  print(k1);
  print("new list is ${nums.sublist(0, k1)}");
}

int removeDuplicates(List<int> nums, int val) {
  if (nums == null) {
    return 0;
  }
  int j = 0;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[j] = nums[i];
      j++;
    }
  }
  return j;
}
