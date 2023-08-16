import 'package:flutter_test/flutter_test.dart';

import 'package:hold_down_press_button/hold_down_press_button.dart';

void main() {
  test('adds one to input values', () {
    final calculator = HoldPressButton(pressTime: 1, pressFunc: () {});
    return calculator;
  });
}
