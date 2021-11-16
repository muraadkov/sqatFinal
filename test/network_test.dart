import 'package:clima/services/location.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/utilities/constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

main() {
  // Need to choose city
  test("should return 200", () async {
    String cityName = 'nur-sultan';
    String url = '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric';

    http.Response response = await http.get(url);
    expect(response.statusCode, 200);
  });

  // Current location
  test("should return 200", () async {
    String url = '$openWeatherMapURL?lat=${latitude}&lon=${longitude}&appid=$apiKey&units=metric';

    http.Response response = await http.get(url);
    expect(response.statusCode, 200);
  });
}

