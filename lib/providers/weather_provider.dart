import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/repositories/api_repository.dart';

class WeatherProvider  extends ChangeNotifier {
  Position? position;
  updatePosition(Position positionCurent) {
    position = positionCurent;
    notifyListeners();
  }
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData resuft = await ApiRepository.callAPIGetWeather(position);
    return resuft;
  }

  Future<List<WeatherDetails>> getWeatherDetails() async {
    List<WeatherDetails> resuft = await ApiRepository.callAPIGetWeatherDetails();
    return resuft;
  }
}

