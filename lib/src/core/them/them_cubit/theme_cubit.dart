import 'package:bloc/bloc.dart';
import 'package:doorak/src/core/helper/cashe_helper.dart';
import 'package:doorak/src/core/style/vily/vule.dart';
import 'package:doorak/src/core/them/dark_them.dart';
import 'package:doorak/src/core/them/light_them.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends Cubit<Themestate> {
  ThemeCubit() : super(Themestate.light) {
    load();
  }

  togleThem() {
    final newstate =
        state == Themestate.light ? Themestate.dark : Themestate.light;
    CasheHelper.saveData(key: keytheme, value: newstate == Themestate.dark);
    emit(newstate);
    print(newstate == Themestate.dark);
  }

  ThemeData get themedata {
    return state == Themestate.light ? lightThem() : darkThem();
  }

  load() {
    var pe = CasheHelper.getData(key: keytheme) ?? false;
    emit(pe ? Themestate.dark : Themestate.light);
  }
}

enum Themestate { dark, light }
