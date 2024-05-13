// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cubit_training/main.dart';

void main() {
  test("this is a test", () {
    // Arrange:
    int x = 5;
    // Act , is empty for now.
    // Assert:
    expect(x, 6, reason: "you are wrong bro");
  });
}
