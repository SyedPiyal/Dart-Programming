///
/// Remove Duplicates from Sorted Array
///  list + two pointer
///

void main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int k1 = removeDuplicates(nums);
  print(k1);
  print("new list is ${nums.sublist(0, k1)}");
}

int removeDuplicates(List<int> nums) {
  if (nums == null) {
    return 0;
  }
  int j = 1;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[j] = nums[i];
      j++;
    }
  }
  return j;
}
