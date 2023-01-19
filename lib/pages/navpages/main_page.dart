import 'package:flutter/material.dart';
import 'package:travelapp_bloc_cubit/pages/navpages/bar_item_page.dart';
import 'package:travelapp_bloc_cubit/pages/home_page.dart';
import 'package:travelapp_bloc_cubit/pages/navpages/profile_page.dart';
import 'package:travelapp_bloc_cubit/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), ProfilePage()];
  int currentindex = 0;

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentindex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Bar', icon: Icon(Icons.bar_chart)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person))
          ]),
    );
  }
}
