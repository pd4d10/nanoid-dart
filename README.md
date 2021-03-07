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
  var custom_length_id = nanoid(10);
  // ...
}
```

### Custom Alphabet or length

```dart
import 'package:nanoid/nanoid.dart';

void main() {
  var id = customAlphabet('1234567890abcdef', 10);
  // ...
}
```

### Async API

```dart
import 'package:nanoid/async.dart';

void main() async {
  var id = await nanoid();
  var custom_length_id = await nanoid(10);
  // ...
}
```

### Non-secure API

```dart
import 'package:nanoid/non_secure.dart';

void main() {
  var non_secure_id = nanoid();
  var custom_length_id = nanoid(10);
  // ...
}
```

## License

MIT
