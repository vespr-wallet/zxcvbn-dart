# Unreleased

- Fixed: `feedback.get_match_feedback` returns the "Repeats like \"abcabcabc\" are only slightly harder to guess than \"abc\"" warning for multi-character repeats. The message was a bare string statement, so these repeats got no warning. Scores are unchanged.
- Removed dead null and type checks the analyzer flagged (`unnecessary_null_comparison`, `unnecessary_type_check`, an unused local). No behaviour change.
- Tooling: GitHub Actions CI (`dart analyze --fatal-infos`, `dart test`) replaces the old Travis config. `.gitignore` covers `.dart_tool/` and `build/`.

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
