import 'dart:math';

final random = Random();

String generate(String alphabet, int size) {
  final len = alphabet.length;
  String id = '';
  while (0 < size--) {
    id += alphabet[random.nextInt(len)];
  }
  return id;
}
