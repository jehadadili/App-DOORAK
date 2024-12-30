import 'package:doorak/my_app.dart';
import 'package:doorak/src/core/bloc/block_observer.dart';
import 'package:doorak/src/core/helper/cashe_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CasheHelper.init();
  runApp(const AppDoorak());
}
