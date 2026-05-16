///Find the Largest Number in a List
///
///

void main() {
  List a = [1, 6, 3, 2, 4, 9];
  int largeNumber = 0;

  for (int i = 0; i < a.length; i++) {
    if (a[i] > largeNumber) {
      largeNumber = a[i];
    }
  }
  print("Largest Number:$largeNumber");
}
