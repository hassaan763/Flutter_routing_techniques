import 'package:flutter/material.dart';
import 'package:flutter_practice_2/home_screen.dart';

class Screen3 extends StatefulWidget {
  static const String id='screen_3';
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('screen_3'),
        ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text('Back')),
          TextButton(onPressed:
              (){
            Navigator.popAndPushNamed(context, HomeScreen.id);
              },
              child: Text('Back to \n Home_screen'))
        ],
      ),
      ),
    );
  }
}
