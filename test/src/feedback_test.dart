import 'package:test/test.dart';
import 'package:zxcvbn/src/feedback.dart';
import 'package:zxcvbn/src/match.dart';

void main() {
  group('repeat feedback', () {
    test('warns about single-character repeats', () {
      final match = PasswordMatch()
        ..pattern = 'repeat'
        ..base_token = 'a';
      expect(
        feedback.get_match_feedback(match, true).warning,
        'Repeats like "aaa" are easy to guess',
      );
    });

    test('warns about multi-character repeats', () {
      final match = PasswordMatch()
        ..pattern = 'repeat'
        ..base_token = 'abc';
      expect(
        feedback.get_match_feedback(match, true).warning,
        'Repeats like "abcabcabc" are only slightly harder to guess than "abc"',
      );
    });
  });
}
