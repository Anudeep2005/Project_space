import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';
class FullProfilePage extends StatelessWidget {
  final Map<String, dynamic> profile;
  final int? profileID;
  
  const FullProfilePage({super.key, required this.profile,this.profileID});
  @override
  Widget build(BuildContext context) {
      Random rand = Random();
      double randomLat = 16.8 + rand.nextDouble() * (17.5 - 16.8);
      double randomLon = 81.3 + rand.nextDouble() * (82.5 - 81.3);
      randomLat = double.parse(randomLat.toStringAsFixed(2));
      randomLon = double.parse(randomLon.toStringAsFixed(2));

    return Scaffold(
      body: Container(
                decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 128, 255), 
                  Color.fromARGB(255, 94, 14, 255),  
                  Color.fromARGB(255, 106, 0, 172),  
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context,MaterialPageRoute(builder: (context)=>FullProfilePage(profile:profile))),
                ),
              ),
                Container(
                  width: double.infinity,
                  child: Text(
                    profile['name'].toString().toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Behame',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.purpleAccent, Colors.blueAccent],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage('https://raw.githubusercontent.com/Anudeep2005/Batman/refs/heads/main/$profileID.jpg')
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                   
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      profile['role'],
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Behame',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.school, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Student, Computer Science",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
        
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children:  [
                      Icon(Icons.location_pin, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text("${profile['location']}",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Expanded(child: Text("$randomLat°N $randomLon°E ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),
                      ))
                    ],
                  ),
                ),
        
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Year: Sophomore",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
        
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text("Age : ${profile['Age']}", style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
        
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children:  [
                      Icon(Icons.mail, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text("${profile['mail']}",style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.call, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "+91 ${profile['phone']}",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                    blurStyle: BlurStyle.outer
                    )],
                    border: Border.all(color: Colors.purpleAccent, width: 1),
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_outlined, color: Colors.purpleAccent),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left :30),
                        child: ElevatedButton(onPressed: (){
                                showDialog(
                                  
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Color.fromRGBO(2, 14, 27, 1),
                                      title: Text("Message Request", style : TextStyle(color: Colors.white)),
                                      content: Text("Sign up to text the user : ${profile['name']}", style : TextStyle(color: Colors.white)),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: Text("OK", style : TextStyle(color: Colors.white)),
                                        )
                                      ],
                                    );
                                  },
                                );
                        }, child: Text("Follow 🙍‍♂️",
                        
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left : 10,right :40),
                        child: OutlinedButton(onPressed: (){
                                showDialog(
                                  
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: Color.fromRGBO(2, 14, 27, 1),
                                      title: Text("Connection", style : TextStyle(color: Colors.white)),
                                      content: Text("You are now connected!", style : TextStyle(color: Colors.white)),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: Text("OK", style : TextStyle(color: Colors.white)),
                                        )
                                      ],
                                    );
                                  },
                                );
                        }, child: Text("Connect +",
                        
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        )),
                      )
                    ],
                  ),
                ),
        
               SizedBox(height: 40),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(0, 0),
                        blurStyle: BlurStyle.outer
                        )],
                        color: const Color(0xFF00FF7F).withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                     child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.black,
                                title: Text('Visit Hackerrank profile?',style: TextStyle(color: Colors.white)),
                                actions: [
                                  TextButton(
                                    child: Text('Cancel',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Continue',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(Icons.code, color: Color(0xFF00FF7F), size: 28),
                        ),

                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(0, 0),
                        blurStyle: BlurStyle.outer
                        )],
                        color: const Color(0xFFFFD700).withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child:  IconButton(onPressed: (){
                                                    showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Color.fromRGBO(2, 14, 27, 1),
                                title: Text("You'll be redirected to Flutterstorm scaffolders website?",
                                style: TextStyle(color: Colors.white)
                                ),
                                actions: [
                                  TextButton(
                                    child: Text('Cancel', style: TextStyle(color: Colors.white),),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Continue',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );
                      },icon : Icon(Icons.bolt, color: Color(0xFFFFD700), size: 28)),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(0, 0),
                        blurStyle: BlurStyle.outer
                        )],
                        color: Color(0xFF0A66C2).withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(onPressed: (){
                        showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.black,
                                title: Text('Visit Leetcode profile?',style: TextStyle(color: Colors.white)),
                                actions: [
                                  TextButton(
                                    child: Text('Cancel',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Continue',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );
                      },icon: ClipOval(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2KJ34dO3Vp7rp1UHEo4eO8VAFNoHKLI9mrw&s'))),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Color.fromRGBO(0, 174, 255, 1),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(0, 0),
                        blurStyle: BlurStyle.outer
                        )],
                      ),
                      child: IconButton(onPressed: (){
                        showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.black,
                                title: Text('Visit LinkedIn profile?',style: TextStyle(color: Colors.white)),
                                actions: [
                                  TextButton(
                                    child: Text('Cancel',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Continue',style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );

                      },icon: ClipOval(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYqE3asP0YRPRnR6U3BS85jeB2u7UWPrmrzA&s'))))
                    
                  ],
                ),
        
              SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
