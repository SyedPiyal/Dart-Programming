import 'dart:io';

void main() {
  while (true) {
    // Read a line of input and split it into two integers
    List<String> input = stdin.readLineSync()!.split(' ');
    int M = int.parse(input[0]);
    int N = int.parse(input[1]);

    // Break the loop if either M or N is less than or equal to zero
    if (M <= 0 || N <= 0) {
      break;
    }

    // Determine the smaller and larger number
    int start = M < N ? M : N;
    int end = M > N ? M : N;

    // Initialize the sum variable
    int sum = 0;

    // Print the sequence and calculate the sum
    for (int i = start; i <= end; i++) {
      stdout.write('$i ');
      sum += i;
    }

    // Print the sum
    print('Sum=$sum');
  }
}
