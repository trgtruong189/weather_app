import 'package:flutter/material.dart';

class HomeTemperture extends StatelessWidget {
  const HomeTemperture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '45',
          style: TextStyle(
            color: Colors.white,
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '0',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
