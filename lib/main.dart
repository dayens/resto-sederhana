import 'package:flutter/material.dart';
import 'package:funda_1/model/restaurant.dart';
import 'package:funda_1/ui/detail_screen.dart';
import 'package:funda_1/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomeScreen(), routes: {
      DetailScreen.routeName: (context) => DetailScreen(
            restaurant:
                ModalRoute.of(context)?.settings.arguments as Restaurant,
          ),
    });
  }
}
