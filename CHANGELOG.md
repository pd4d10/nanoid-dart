# [2.0.0]

- **BREAKING:** Custom alphabet
  - Use `Nanoid(alphabet: a2z).generate(10)` instead of `customAlphabet(a2z, 10)`
- **BREAKING:** Nonsecure
  - Use `Nanoid(random: Random()).generate(10)` instead of importing `nanoid/non_secure.dart` and using `nanoid(10)`
- **BREAKING:** Async
  - async API has been removed

# [1.0.0](https://github.com/pd4d10/nanoid-dart/compare/v0.1.0...v1.0.0) (2021-03-07)

### Features

- matches the latest api ([0ba2674](https://github.com/pd4d10/nanoid-dart/commit/0ba267407babd2af47c3da46772a2e7db7b3d8e8))
- null safety ([#3](https://github.com/pd4d10/nanoid-dart/issues/3)) ([83688e7](https://github.com/pd4d10/nanoid-dart/commit/83688e764bca0defc3512726e982c3e4de45bf27))

# [0.1.0](https://github.com/pd4d10/nanoid-dart/compare/v0.0.6...v0.1.0) (2019-03-06)

## [0.0.6](https://github.com/pd4d10/nanoid-dart/compare/v0.0.5...v0.0.6) (2018-11-08)

### Features

- v2.0 async API ([2f3c92f](https://github.com/pd4d10/nanoid-dart/commit/2f3c92fd36161b0d382f97817b41113d6b590142))

## [0.0.5](https://github.com/pd4d10/nanoid-dart/compare/v0.0.3...v0.0.5) (2018-11-07)

### Features

- v2.0 alphabet update ([e5f0925](https://github.com/pd4d10/nanoid-dart/commit/e5f0925a8219bef792cc5de38cd8755c473b5fbf))
- v2.0 non secure API ([bff7e76](https://github.com/pd4d10/nanoid-dart/commit/bff7e76d0e8f4aa72005ef8729158d580526297f))

## [0.0.3](https://github.com/pd4d10/nanoid-dart/compare/v0.0.2...v0.0.3) (2018-04-07)

## 0.0.2 (2018-04-07)
