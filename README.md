# Nano ID

[![Travis](https://img.shields.io/travis/pd4d10/nanoid.svg)](https://travis-ci.org/pd4d10/nanoid)
[![Pub](https://img.shields.io/pub/v/nanoid.svg)](https://pub.dartlang.org/packages/nanoid)

Dart implementation of [ai/nanoid](https://github.com/ai/nanoid)

## Usage

### Normal

```dart
import 'package:nanoid/nanoid.dart';

void main() {
  var id = nanoid();
  var custom_length_id = nanoid(10);
  // ...
}
```

### Custom Alphabet

```dart
import 'package:nanoid/generate.dart';

void main() {
  var id = generate('1234567890abcdef', 10);
  // ...
}
```

## License

MIT
