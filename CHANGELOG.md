# 1.0.1

VESPR fork of [careapp-group/zxcvbn-dart](https://github.com/careapp-group/zxcvbn-dart) 1.0.0, which is capped below Dart 3.

- SDK constraint `>=2.12.0 <3.0.0` → `>=3.0.0`, so the package resolves on Dart 3.
- `matching.dart`: the nullable-returning matcher ends with an explicit `return null`, which Dart 3 requires.

# 1.0.0

Null Safety! Thanks to @lmordell and @hpoul for their contributions.

# 0.0.1

Initial version.

- Port of Coffee Script to Dart.
- Port all tests.
- Verify behaviour
