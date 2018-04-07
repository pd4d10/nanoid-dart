import 'package:test/test.dart';
import 'package:nanoid/nanoid.dart';
import 'package:nanoid/url.dart';

void main() {
  test('generates URL-friendly IDs', () {
    for (var i = 0; i < 10; i++) {
      var id = nanoid();
      expect(id.length, equals(21));
      for (var j = 0; j < id.length; j++) {
        expect(url.contains(id[j]), equals(true));
      }
    }
  });

  test('has no collisions', () {
    var COUNT = 100 * 1000;
    var used = {};
    for (var i = 0; i < COUNT; i++) {
      var id = nanoid();
      expect(used[id], equals(null));
      used[id] = true;
    }
  });
}
