import 'dart:async';
import 'generate.dart';
import '../url.dart';

Future<String> nanoid([int size = 21]) async {
  return generate(url, size);
}
