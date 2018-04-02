import 'dart:math';

String url = '_~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
Random r = new Random.secure();

String nanoid([int size = 21]) {
  String id = '';
  while (0 < size--) {
    id += url[r.nextInt(64)];
  }
  return id;
}
