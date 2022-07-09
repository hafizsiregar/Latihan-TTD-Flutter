import 'package:aplikasi_segitiga_ttd/triangle_app.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  group('Detect the triangle', () {
    test('Should throw Error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });
    test('Should return "Segitiga Sama Sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga Sama Sisi");
      expect(detectTriangle(1, 1, 2), isNot("Segitiga Sama Sisi"));
    });
    test('Should return "Segitiga Sama Kaki" when only two sides are equal', () {
      expect(detectTriangle(1, 1, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(1, 2, 1), "Segitiga Sama Kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
  });
  });
}