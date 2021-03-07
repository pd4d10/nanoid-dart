import 'package:test/test.dart';
import 'package:nanoid/nanoid.dart';

void main() {
  test('has options', () {
    expect(customAlphabet('a', 5), equals('aaaaa'));
  });

  test('has flat distribution', () {
    var count = 100 * 1000;
    var length = 5;
    var alphabet = 'abcdefghijklmnopqrstuvwxyz';

    var chars = {};
    for (var i = 0; i < count; i++) {
      var id = customAlphabet(alphabet, length);
      for (var j = 0; j < id.length; j++) {
        var char = id[j];
        if (chars[char] == null) chars[char] = 0;
        chars[char] += 1;
      }
    }

    chars.forEach((k, _) {
      var distribution = (chars[k] * alphabet.length) / (count * length);
      expect(distribution, closeTo(1, 1));
    });
  });
}
