import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/apps/config/theme_custom.dart';
import 'package:weather_app/page/bottom_navigation_custom/bottom_custom.dart';
import 'package:weather_app/page/home/home_page.dart';
import 'package:weather_app/providers/weather_provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.positionCurent});
  final Position positionCurent;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider()..updatePosition(positionCurent),
      child:  MaterialApp(
        theme: ThemeCustom.lightTheme,
        debugShowCheckedModeBanner: false,
        home: BottomCustom(),
      ),
    );
  }
}
