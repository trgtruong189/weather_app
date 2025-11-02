import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider  extends ChangeNotifier {
  Position? position;
  String cityName = 'Ha Noi ';
  updatePosition(Position positionCurent) {
    position = positionCurent;
    notifyListeners();
  }
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData resuft = await ApiRepository.callAPIGetWeather(position);
    cityName = resuft.name;
    notifyListeners();
    return resuft;
  }

  Future<List<WeatherDetails>> getWeatherDetails() async {
    List<WeatherDetails> resuft = await ApiRepository.callAPIGetWeatherDetails(position);
    return resuft;
  }
}

