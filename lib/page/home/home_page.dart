import 'package:flutter/material.dart';
import 'package:weather_app/page/home/home_details.dart';
import 'package:weather_app/page/home/home_location.dart';
import 'package:weather_app/page/home/home_temperture.dart';
import 'package:weather_app/page/home/home_weather_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1D6CF3), Color(0xff19D2FE)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homeWeatherIcon(),
            HomeTemperture(),
            HomeLocation(),
            HomeDetails()
          ],
        ),
      ),
    );
  }
}

