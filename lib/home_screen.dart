import 'package:flutter/material.dart';
import 'package:flutter_practice_2/screen_2.dart';
import 'package:flutter_practice_2/screen_3.dart';

class HomeScreen extends StatefulWidget {
  static const String id='home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea (
        child: Drawer(
          child: ListView(
            children: [

              Padding(padding: EdgeInsets.zero),
               UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc)
                ),
                  currentAccountPictureSize: Size.square(60),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://resizing.flixster.com/ZCuzsQj8V6ekkoUyPDiXr-0aN9s=/206x305/v2/https://flxt.tmsimg.com/assets/p3546099_p_v8_bc.jpg'
                    ),
                  ),
                  accountName: Text('userheader'),
                  accountEmail: Text('abc@gmail.com')
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'page2'
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2())
                  );
                },

              ),
              ListTile(
                leading: Icon(
                  Icons.smoking_rooms
                ),
                title: Text('page3'),
                onTap: (){
                  Navigator.pushNamed(context, Screen3.id);
                },
              ),
              //DrawerHeader(child: Text('header')),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff764abc),
        title: const Text(
          'Home_Screen',
        ),
      ),
      body: Column(
        children: [
          TextButton(onPressed:
              (){
            Navigator.pushNamed(context, Screen2.id);
              }
              , child: Text('riouting.push_to_screen_2')),
          TextButton(onPressed:
              (){
            Navigator.pop(context);
              }
              , child: Text('Back Button')
          ),
          TextButton(
              onPressed : (){
                //Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> Screen2()
                    ));
              },
              child: Text('Screen_2')
          ),
          TextButton(onPressed:
              (){
            Navigator.pushNamed(context, Screen3.id);
              },
              child: Text('screen_3'),
          ),
        ],
      )
    );
  }
}

