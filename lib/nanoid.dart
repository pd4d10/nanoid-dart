import 'generate.dart';
import 'url.dart';

String nanoid([int size = 21]) {
  return generate(url, size);
}
