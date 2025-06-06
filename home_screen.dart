import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scaffolders/profiles.dart';

class HomeScreen extends StatelessWidget 
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 14, 27, 1),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>Profiles()));
              },
              child: Center(child: Image.asset('assets/Home_page.jpg', height: 720,))),
          )
        ],
      ),
      
    );
  }
}