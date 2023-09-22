import 'package:dio/dio.dart';
import '../../models/weather.dart';
import '../api/weather_api.dart';

class WeatherApiService {
  Future<Weather> requestWeather({required String location}) async {
    try {
      final response = await Dio().get(
          'http://api.weatherapi.com/v1/forecast.json?key=${WeatherApi.weatherApi}'
          '&q=$location&days=3&aqi=no&alerts=no&sunrise=yes&sunset=yes');

      switch (response.statusCode) {
        case 200:
          final weatherData = Weather.fromJson(response.data);
          return weatherData;
        default:
          throw Exception('Error while loading weather');
      }

    } catch (e) {
      throw Exception('Error while loading weather');
    }
  }

}
