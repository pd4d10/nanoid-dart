import 'package:nanoid/nanoid.dart';

void main() {
  var id = nanoid();
  print(id);

  var customLengthId = nanoid(10);
  print(customLengthId);
}
