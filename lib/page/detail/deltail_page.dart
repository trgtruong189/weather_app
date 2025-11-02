import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/page/detail/widgets/deltail_body.dart';
import 'package:weather_app/providers/weather_provider.dart';

class DeltailPage extends StatelessWidget {
  const DeltailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1D6CF3), Color(0xff19D2FE)],
          ),
        ),
      child: FutureBuilder(
        future: context.read<WeatherProvider>().getWeatherDetails(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(color: Colors.white);
            }
            if (asyncSnapshot.hasError) {
              return Text('Error: ${asyncSnapshot.error}');
            } 
          List<WeatherDetails> listdata = asyncSnapshot.data as List<WeatherDetails>;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: false,
              title: Row(
                children: [
                  Icon(CupertinoIcons.location),
                  SizedBox(width: 15,),
                  Text('Ha Noi', style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),
              actions: [
                Icon(CupertinoIcons.search),
                SizedBox(width: 15,),
              ],
            ),
            body: DeltailBody(listData: listdata,),
          );
        }
      ),
    );
  }
}