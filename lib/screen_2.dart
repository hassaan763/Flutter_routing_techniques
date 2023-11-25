import 'package:flutter/material.dart';
import 'package:flutter_practice_2/home_screen.dart';

class Screen2 extends StatelessWidget {
  static const String id='screen_2';
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff764abc),
            title: const Text(
              'Screen_2',
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 100,
                      itemBuilder: (context,index)
                      {
                        return ListTile(
                          title: Text('name'),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage('https://resizing.flixster.com/ZCuzsQj8V6ekkoUyPDiXr-0aN9s=/206x305/v2/https://flxt.tmsimg.com/assets/p3546099_p_v8_bc.jpg'),
                          ),
                          onTap: (){

                          },
                    );
                  }),
                ),
                TextButton(onPressed:
                    (){
                  Navigator.pop(context);
                }
                    , child: Text('Back Button')
                ),
                TextButton(onPressed:
                    (){
                  Navigator.popAndPushNamed(context, HomeScreen.id);
                    },
                    child: Text('routing.back')),
                TextButton(
                    onPressed : (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> HomeScreen()
                          ));
                    },
                    child: Text('home_screen')
                )
              ],
            ),
          )
      )
    );
  }
}
