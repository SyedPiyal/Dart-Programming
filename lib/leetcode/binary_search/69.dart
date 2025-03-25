///
/// binary search
/// Sqrt(x)
///
void main() {
  int x = 15;
  int result = findSqrt(x);
  print(result);
}

int findSqrt(x) {
  if (x == 0 || x == 1) return x;

  int low = 0, high = x;
  while (low <= high) {
    int mid = low + (high - low) ~/ 2;
    if (mid * mid == x) {
      return mid;
    } else if (mid * mid < x) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return high;
}
