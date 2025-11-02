import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/apps/utils/const.dart';
import 'package:weather_app/models/weather.dart';

class ApiRepository {
  static Future<WeatherData> callAPIGetWeather(Position? position) async {
    try {
      final dio = Dio();
    final res = await dio.get('https://api.openweathermap.org/data/2.5/weather?lat=${position?.latitude}&lon=${position?.longitude}&units=metric&appid=${MyKey.api_token}');
    final data = res.data;
    WeatherData resuft = WeatherData.fromMap(data);
    return resuft;
    } catch (e) {
      rethrow ;
    }
   }

   static Future<List<WeatherDetails>> callAPIGetWeatherDetails() async {
    try {
      final dio = Dio();
    final res = await dio.get('https://api.openweathermap.org/data/2.5/forecast?lat=21,02838&lon=105,85373&units=metric&appid=${MyKey.api_token}');
    List data = res.data['list'];
      List<WeatherDetails> resuft = 
       List<WeatherDetails>.from(data.map((e) => WeatherDetails.fromMap(e))).toList();
      return resuft;
    } catch (e) {
      rethrow ;
    }
   }
}