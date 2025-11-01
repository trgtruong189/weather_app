import 'package:flutter/material.dart';
import 'package:weather_app/apps/utils/const.dart';

class homeWeatherIcon extends StatelessWidget {
  const homeWeatherIcon({super.key, required this.nameIcon});
  final nameIcon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset(AssetCustom.getLinkImg(nameIcon), 
      fit: BoxFit.cover,),
    );
  }
}
