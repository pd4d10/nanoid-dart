import 'package:nanoid/async/nanoid.dart';

void main() async {
  var id = await nanoid();
  print(id);

  var custom_length_id = await nanoid(10);
  print(custom_length_id);
}
