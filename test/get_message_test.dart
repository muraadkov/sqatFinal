import 'package:clima/services/weather.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group("Message text", () {

    test("should return 🍦", () {
      int temp = 30;
      String message = WeatherModel().getMessage(temp);
      expect(message, 'It\'s 🍦 time');
    });

    test("should return 👕", () {
      int temp = 23;
      String message = WeatherModel().getMessage(temp);
      expect(message, 'Time for shorts and 👕');
    });

    test("should return 🧣 and 🧤", () {
      int temp = 9;
      String message = WeatherModel().getMessage(temp);
      expect(message, 'You\'ll need 🧣 and 🧤');
    });

    test("should return 🧥", () {
      int temp = 15;
      String message = WeatherModel().getMessage(temp);
      expect(message, 'Bring a 🧥 just in case');
    });
  });
}