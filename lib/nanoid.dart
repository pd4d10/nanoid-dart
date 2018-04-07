import 'generate.dart';

var url = '_~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

String nanoid([int size = 21]) {
  return generate(url, size);
}
