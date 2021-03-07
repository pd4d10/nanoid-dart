import 'dart:math';
import 'package:nanoid/src/url_alphabet.dart';
export 'package:nanoid/src/url_alphabet.dart';

final _random = Random();

String nanoid([int size = 21]) {
  return customAlphabet(urlAlphabet, size);
}

String customAlphabet(String alphabet, int size) {
  final len = alphabet.length;
  String id = '';
  while (0 < size--) {
    id += alphabet[_random.nextInt(len)];
  }
  return id;
}
