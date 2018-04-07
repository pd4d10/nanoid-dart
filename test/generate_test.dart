import 'package:test/test.dart';
import 'package:nanoid/generate.dart';

void main() {
  test('has options', () {
    expect(generate('a', 5), equals('aaaaa'));
  });

  test('has flat distribution', () {
    var COUNT = 100 * 1000;
    var LENGTH = 5;
    var ALPHABET = 'abcdefghijklmnopqrstuvwxyz';

    var chars = {};
    for (var i = 0; i < COUNT; i++) {
      var id = generate(ALPHABET, LENGTH);
      for (var j = 0; j < id.length; j++) {
        var char = id[j];
        if (chars[char] == null) chars[char] = 0;
        chars[char] += 1;
      }
    }

    chars.forEach((k, _) {
      var distribution = (chars[k] * ALPHABET.length) / (COUNT * LENGTH);
      expect(distribution, closeTo(1, 1));
    });
  });
}
