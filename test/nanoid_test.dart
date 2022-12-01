import 'dart:math' show Random;

import 'package:test/test.dart';
import 'package:nanoid/nanoid.dart';

void main() {
  group('nanoid', () {
    test('generates URL-friendly IDs', () {
      for (var i = 0; i < 10; i++) {
        var id = nanoid();
        expect(id.length, equals(21));
        for (var j = 0; j < id.length; j++) {
          expect(Nanoid.urlSafeAlphabet.contains(id[j]), equals(true));
        }
      }
    });

    test('has no collisions', () {
      var count = 100 * 1000;
      var used = {};
      for (var i = 0; i < count; i++) {
        var id = nanoid();
        expect(used[id], equals(null));
        used[id] = true;
      }
    });
  });

  group('custom alphabet', () {
    String customAlphabet(String alphabet, int length) =>
        Nanoid(alphabet: alphabet).generate(length);

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
  });

  test('urlSafeAlphabet', () {
    expect(Nanoid.urlSafeAlphabet, matches(RegExp(r'[a-zA-Z0-9_-]')));
  });

  group('readme examples', () {
    test('normal', () {
      var id = nanoid();
      expect(id.isNotEmpty, isTrue);

      var customLengthId = nanoid(10);
      expect(customLengthId.length, equals(10));
    });

    test('custom alphabet or length', () {
      var hexNanoid = Nanoid(alphabet: '1234567890abcdef');
      var id = hexNanoid(10);
      expect(id, matches(RegExp(r'^[a-z0-9]+$')));
      expect(id.length, equals(10));
    });

    test('non-secure', () {
      var nonsecureNanoid = Nanoid(random: Random());
      var id = nonsecureNanoid(10);
      expect(id.length, equals(10));
    });
  });
}
