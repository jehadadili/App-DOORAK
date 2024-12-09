import 'package:doorak/src/feature/home/presntation/view/screen/home_sceen.dart';
import 'package:doorak/src/feature/location/view/screen/location_screen.dart';
import 'package:doorak/src/feature/profile/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class TabNavigationPages extends StatelessWidget {
  const TabNavigationPages(
      {super.key, required this.tabItem, required this.navigatorKey});
  final String tabItem;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (tabItem == "page1") {
      child = const HomeSceen();
    } else if (tabItem == "page2") {
      child = const LocationScreen();
    } else if (tabItem == "page3") {
      child = const UserProfileScreen();
    }
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (_) => child!);
      },
    );
  }
}
