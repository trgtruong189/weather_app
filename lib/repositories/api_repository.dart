import 'package:dio/dio.dart';
import 'package:weather_app/apps/utils/const.dart';
import 'package:weather_app/models/weather.dart';

class ApiRepository {
  Future<WeatherData> callAPIGetWeather() async {
    try {
      final dio = Dio();
    final res = await dio.get('https://api.openweathermap.org/data/2.5/weather?lat=21,02838&lon=105,85373&units=metric&appid=${MyKey.api_token}');
    final data = res.data;
    WeatherData resuft = WeatherData.fromMap(data);
    return resuft;
    } catch (e) {
      rethrow ;
    }
   }
}