import 'package:doorak/my_app.dart';
import 'package:doorak/src/core/helper/cashe_helper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CasheHelper.init();
  runApp(const AppDoorak());
}
