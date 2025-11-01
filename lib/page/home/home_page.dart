import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/page/home/home_details.dart';
import 'package:weather_app/page/home/home_location.dart';
import 'package:weather_app/page/home/home_temperture.dart';
import 'package:weather_app/page/home/home_weather_icon.dart';
import 'package:weather_app/providers/weather_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

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
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          builder: (BuildContext context, asyncSnapshot) {
            if (asyncSnapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(color: Colors.white);
            }
            if (asyncSnapshot.hasError) {
              return Text('Error: ${asyncSnapshot.error}');
            } 
            WeatherData data = asyncSnapshot.data as WeatherData;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  homeWeatherIcon(nameIcon: data.weather[0].main,),
                  HomeTemperture(temp: data.main.temp,),
                  HomeLocation(nameLocation: data.name,),
                  HomeDetails(
                    windSpeed: data.wind.speed,
                    humidity: data.main.humidity,
                  ),
                ],
              );
          },
        ),
      ),
    );
  }
}
