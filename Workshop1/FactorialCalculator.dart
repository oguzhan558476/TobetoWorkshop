import 'dart:io';

void main() {
  print("Lütfen Bir Sayı Giriniz: ");
  String? input = stdin.readLineSync();
  int number = int.parse(input ?? "1");
  calculateFactorial(number);
}

void calculateFactorial(int N) {
  int number = 1;
  for (var i = 1; i <= N; i++) {
    number = number * i;
  }
  print("${N} Faktöriyel = ${number}");
}
