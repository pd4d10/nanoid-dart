import 'dart:math';
import 'dart:async';

var random = new Random();

Future<String> generate(String alphabet, int size) async {
  var len = alphabet.length;
  String id = '';
  while (0 < size--) {
    id += alphabet[random.nextInt(len)];
  }
  return id;
}
