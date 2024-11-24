import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doorak/src/core/style/color/color_app.dart';
import 'package:doorak/src/core/style/icon/icon_app.dart';
import 'package:doorak/src/feature/bottom_navigation_bar/cubit/cubit.dart';
import 'package:doorak/src/feature/bottom_navigation_bar/view/widgets/tab_navigation_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCurvedNavigationBar extends StatelessWidget {
  const CustomCurvedNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, selectedIndex) {
          final navCubit = context.read<NavigationCubit>();
          return Scaffold(
            body: Stack(
              children: [
                _buildOffStageNavigator(navCubit, "page1"),
                _buildOffStageNavigator(navCubit, "page2"),
                _buildOffStageNavigator(navCubit, "page3"),
              ],
            ),
            bottomNavigationBar: CurvedNavigationBar(
              color:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor ??
                      ColorApp.primarycolor,
              backgroundColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .selectedItemColor ??
                  ColorApp.white,
              animationDuration: const Duration(milliseconds: 200),
              items: [
                Image.asset(IconApp.home, width: 30, height: 30),
                Image.asset(IconApp.location, width: 30, height: 30),
                Image.asset(IconApp.personpin, width: 30, height: 30),
              ],
              index: selectedIndex,
              onTap: (index) {
                navCubit.selectTab(navCubit.pageKeysList[index], index);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildOffStageNavigator(NavigationCubit navCubit, String tabItem) {
    return Offstage(
      offstage: navCubit.currentPage != tabItem,
      child: TabNavigationPages(
        navigatorKey: navCubit.navigationKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}
