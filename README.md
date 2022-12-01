# nanoid

[![pub](https://img.shields.io/pub/v/nanoid.svg)](https://pub.dartlang.org/packages/nanoid)
[![test](https://github.com/pd4d10/nanoid-dart/workflows/test/badge.svg)](https://github.com/pd4d10/nanoid-dart/actions?query=workflow:test)

Dart implementation of [ai/nanoid](https://github.com/ai/nanoid)

## Installation

Add `nanoid` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages)

## Usage

### Normal

```dart
import 'package:nanoid/nanoid.dart';

void main() {
  var id = nanoid();
  var customLengthId = nanoid(10);
  // ...
}
```

### Custom Alphabet or length

```dart
import 'package:nanoid/nanoid.dart';

void main() {
  var hexNanoid = Nanoid(alphabet: '1234567890abcdef');
  var id = hexNanoid(10);
  // ...
}
```

### Non-secure

```dart
import 'package:nanoid/non_secure.dart';

void main() {
  var nonsecureNanoid = Nanoid(random: Random());
  var nonsecureId = nonsecureNanoid();
  var customLengthId = nonsecureNanoid(10);
  // ...
}
```

## License

MIT
