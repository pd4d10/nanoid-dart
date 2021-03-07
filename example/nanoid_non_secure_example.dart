import 'package:nanoid/non_secure.dart';

void main() {
  var non_secure_id = nanoid();
  print(non_secure_id);

  var custom_length_id = nanoid(10);
  print(custom_length_id);
}
