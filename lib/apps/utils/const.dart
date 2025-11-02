import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


const linkAsset = 'lib/assets/images/weathers/';

class AssetCustom {
  static String getLinkImg (String name) => '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey{
  static const String api_token = '4d4b33af2b18a51fd1c1c5fa521a5e63';
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          temp.toInt().toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '0',
          style: TextStyle(
            color: Colors.white,
            fontSize: size / 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );

}