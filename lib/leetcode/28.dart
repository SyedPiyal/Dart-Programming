///
/// Find the Index of the First Occurrence in a String
/// list + two pointer
///

void main() {
  String haystack = "sadbutsad", needle = "sad";

  int result = findOccurrence(haystack, needle);

  print(result);
}

int findOccurrence(String haystack, String needle) {
  if (needle == null) {
    return 0;
  }
  int i = 0;
  int j = 0;

  while (i < haystack.length) {
    if (haystack[i] == needle[j]) {
      i++;
      j++;
      if (j == needle.length) {
        return i - j;
      }
    } else {
      i = i - j + 1;
      j = 0;
    }
  }
  return -1;
}
