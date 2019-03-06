import 'package:nanoid/nanoid.dart';

void main() {
  var id = nanoid();
  print(id);

  var custom_length_id = nanoid(10);
  print(custom_length_id);
}
