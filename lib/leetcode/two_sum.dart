class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [nums[i], nums[j]];
        }
      }
    }
    return [];
  }
}

void main() {
  // List<int> nums = [2, 7, 11, 15];
  // int target = 9;
  // Solution solution = Solution();
  // List<int> result = solution.twoSum(nums,target);
  // print(result);

  List<int> list = [64, 34, 25, 12, 22, 11, 90];
  var value = bubblePrac(list);
  print(value);
}

List<int> bubblePrac(List<int> list) {
  int n = list.length;
  bool swap = false;

  for (int i = 0; i < n - 1; i++) {
    swap = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        swap = true;
      }
    }
    if (swap == false) {
      break;
    }
  }
  return list;
}
