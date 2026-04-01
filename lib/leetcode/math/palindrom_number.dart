/// A palindromic number (also known as a numeral palindrome or a numeric palindrome)
/// is a number (such as 16361) that remains the same when its digits are reversed

void main() {
  int number = 16361;
  int reverseNum = 0;
  while (number != 0) {
    int last = number % 10;
    reverseNum = reverseNum * 10 + last;
    number ~/= 10;
  }
print(reverseNum);
  if (reverseNum == number) {
    print("Palindrome Number");
  } else {
    print(reverseNum);
    print(number);
    print("Not Palindrome Number");
  }
}
