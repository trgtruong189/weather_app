import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/page/detail/deltail_page.dart';
import 'package:weather_app/page/home/home_page.dart';

class BottomCustom extends StatefulWidget {
  const BottomCustom({super.key});

  @override
  State<BottomCustom> createState() => _BottomCustomState();
}

class _BottomCustomState extends State<BottomCustom> {
  List<BottomNavigationBarItem> listIteam = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.list_bullet),
      label: 'List',
    ),
  ];

  List<Widget> listPage = [
    const HomePage(),
    const DeltailPage(),
  ];
  int activePage = 0;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPage[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        onTap: (int index) {
          setState(() {
            activePage = index;
          });
        },
        items: listIteam
      ),
    );
  }
}