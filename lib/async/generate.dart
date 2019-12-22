import 'dart:math';
import 'dart:async';

final random = Random();

Future<String> generate(String alphabet, int size) async {
  final len = alphabet.length;
  String id = '';
  while (0 < size--) {
    id += alphabet[random.nextInt(len)];
  }
  return id;
}
