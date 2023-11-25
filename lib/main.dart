import 'package:flutter/material.dart';
import 'package:flutter_practice_2/home_screen.dart';
import 'package:flutter_practice_2/screen_2.dart';
import 'package:flutter_practice_2/screen_3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        initialRoute: HomeScreen.id,
        routes: {
        HomeScreen.id : (context)=> HomeScreen(),
          Screen2.id : (context)=>Screen2(),
          Screen3.id : (context)=>Screen3()
        },
        //home: HomeScreen()
    );
  }
}