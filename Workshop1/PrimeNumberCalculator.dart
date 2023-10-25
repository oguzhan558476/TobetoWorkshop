import 'dart:io';

main() {
  print("Lütfen Bir Sayı Giriniz: ");
  String? input = stdin.readLineSync();
  int number = int.parse(input ?? "1");
  findPrimes(number);
}

void findPrimes(int N) {
  for (int number = 2; number <= N; number++) {
    bool isPrime = true;
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('$number asal sayıdır');
    }
  }
}
