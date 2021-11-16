import 'package:clima/services/weather.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  group("Weather Icon", () {
    test("should return 🌩", () {
      int condition = 200;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, "🌩");
    });

    test("should return 🌧", () {
      int condition = 350;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, "🌧");
    });

    test("should return ☔", () {
      int condition = 550;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, '☔️');
    });

    test("should return ☃️", () {
      int condition = 650;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, "☃️");
    });

    test("should return 🌫", () {
      int condition = 778;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, "🌫");
    });

    test("should return ☀️", () {
      int condition = 800;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, "☀️");
    });

    test("should return ☁️", () {
      int condition = 802;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, "☁️");
    });

    test("should return 🤷️", () {
      int condition = 845;
      String weatherIcon = WeatherModel().getWeatherIcon(condition);
      expect(weatherIcon, '🤷‍');
    });
  });
}
