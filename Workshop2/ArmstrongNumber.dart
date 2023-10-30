import 'dart:math';

bool isArmstrongNumber(int number) {
  int originalNumber = number;
  int result = 0;
  int numberOfDigits = number.toString().length;

  while (number > 0) {
    int digit = number % 10;
    result += pow(digit, numberOfDigits).toInt();
    number ~/= 10;
  }

  return result == originalNumber;
}

void main() {
  int number = 153; // Test etmek istediğiniz sayıyı buraya girin
  if (isArmstrongNumber(number)) {
    print('$number bir Armstrong sayısıdır.');
  } else {
    print('$number bir Armstrong sayısı değildir.');
  }
}
