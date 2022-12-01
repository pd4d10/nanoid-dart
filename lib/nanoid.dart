import 'dart:math';

/// A convenience function for generating a secure nanoid
///
/// ```dart
/// final id = nanoid(5);
/// print(id); // a5g4z
/// ```
final nanoid = Nanoid();

class Nanoid {
  /// The source alphabet to use for generating a nanoid
  final String alphabet;

  final Random _random;

  /// A nanoid generator that is secure by default
  Nanoid({this.alphabet = urlSafeAlphabet, Random? random})
      : _random = random ?? Random.secure();

  /// Convenience caller for `nanoid()` shorthand
  String call([int size = 21]) => generate(size);

  /// Generate a nanoid with a given size
  String generate([int size = 21]) {
    final len = alphabet.length;
    final buffer = StringBuffer();
    while (0 < size--) {
      buffer.write(alphabet[_random.nextInt(len)]);
    }
    return buffer.toString();
  }

  /// The default alphabet used for generating a nanoid. Contains [a-zA-Z0-9_-]
  static const urlSafeAlphabet =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_';
}
