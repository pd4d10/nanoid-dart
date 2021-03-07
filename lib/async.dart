import 'dart:math';
import 'package:nanoid/src/url_alphabet.dart';
export 'package:nanoid/src/url_alphabet.dart';

final _random = Random.secure();

Future<String> nanoid([int size = 21]) async {
  return customAlphabet(urlAlphabet, size);
}

Future<String> customAlphabet(String alphabet, int size) async {
  final len = alphabet.length;
  String id = '';
  while (0 < size--) {
    id += alphabet[_random.nextInt(len)];
  }
  return id;
}
