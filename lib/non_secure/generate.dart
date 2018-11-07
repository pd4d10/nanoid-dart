import 'dart:math';

var random = new Random();

String generate(String alphabet, int size) {
  var len = alphabet.length;
  String id = '';
  while (0 < size--) {
    id += alphabet[random.nextInt(len)];
  }
  return id;
}
