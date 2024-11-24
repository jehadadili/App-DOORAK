import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0);

  final List<String> pageKeysList = ["page1", "page2", "page3"];

  final navigationKeys = {
    "page1": GlobalKey<NavigatorState>(),
    "page2": GlobalKey<NavigatorState>(),
    "page3": GlobalKey<NavigatorState>(),
  };

  String currentPage = "page1";

  void selectTab(String tabItem, int index) {
    if (tabItem == currentPage) {
      navigationKeys.forEach((key, value) {
        value.currentState!.popUntil((route) => route.isFirst);
      });
    } else {
      currentPage = pageKeysList[index];
      emit(index);
    }
  }
}
