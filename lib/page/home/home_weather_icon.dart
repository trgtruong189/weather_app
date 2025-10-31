import 'package:flutter/material.dart';

class homeWeatherIcon extends StatelessWidget {
  const homeWeatherIcon({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset('lib/assets/images/weathers/lightdrizzle-1.png', 
      fit: BoxFit.cover,),
    );
  }
}
