import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_scaffolders/profile_page.dart';

class Profiles extends StatefulWidget {
  const Profiles({super.key});

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> 
{
  final List<Map<String,dynamic>> details = [
  {
    "name":"Anudeep",
    "role": "Developer",
    "company" : "T Hub",
    "year" : "Somophore",
    "Age" : 19,
    "mail" : "anudeep@flutterstorm.com",
    "location" : "Rajahmundry, India",
    "phone" : "77026 51885"

  },
  {
    "name":"Vamsi",
    "role": "UI/UX Designer",
    "company" : "T Hub",
    "year" : "Somophore",
    "Age" : 20,
    "mail" : "Vamsi@flutterstorm.com",
    "location" : "Rayavaram, India",
    "phone" : "83411 78134"
  },
  {
    "name":"Praneeth",
    "role": "UI/UX Designer",
    "company" : "T Hub",
    "year" : "Somophore",
    "Age" : 19,
    "mail" : "praneeth@fluttestorm.com",
    "location" : "Kakinada, India",
    "phone" : "70759 38669"
  },
  {
    "name":"Bhanu",
    "role": "Support Team",
    "company" : "T Hub",
    "year" : "Somophore",
    "Age" : 20,
    "mail" : "bhanu@flutterstorm.com",
    "location" : "Arikirevula, India",
    "phone" : "91536 18999"
  },
  {
    "name":"Suresh",
    "role": "Tester",
    "company" : "T Hub",
    "year" : "Somophore",
    "Age" : 20,
    "mail" : "suresh@flutterstorm.com",
    "location" : "Pithapuram, India",
    "phone" : "63017 69389"
  },
  {
    "name":"Manikanta",
    "role": "Developer",
    "company" : "T Hub",
    "year" : "Somophore",
    "Age" : 19,
    "mail" : "manikanta@flutterstorm.com",
    "location" : "Kakinada, India",
    "phone" : "99633 64941"
  }
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flutterstorm Scaffolders⚡",
        style : TextStyle(
          color: Color.fromRGBO(2, 14, 27, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Color.fromRGBO(2, 14, 27, 1),)),
          SizedBox(width: 20,),
        ],
        bottom: PreferredSize(preferredSize: Size.fromHeight(70), child: Row(
          children: [
              Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              margin: EdgeInsets.only(left:20, top : 2, right : 20, bottom: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(31, 255, 255, 255),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [BoxShadow(color: const Color.fromARGB(221, 230, 226, 226))],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for profiles.",
                  border: InputBorder.none,
                  icon: Icon(Icons.search,color: const Color.fromARGB(229, 32, 29, 29),),
                ),
              ),
            ),
              ),
          ],
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top :75),
            child: Text("Welcome to Flutterstorm",
                      style: TextStyle(
                        fontFamily: 'Behame',
                        shadows: [Shadow(color: Color.fromRGBO(121, 40, 253, 1),blurRadius: 15,offset: Offset(1, 1))],
                        fontSize: 22,
                        foreground: Paint()
                        ..shader = LinearGradient(
                        colors: [
                         Color.fromRGBO(0, 191, 255, 1),    // Sky Blue
                         Color.fromRGBO(0, 132, 255, 1),    // Electric Blue
                         Color.fromRGBO(159, 67, 251, 1),   // Blue-Violet
                              ],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 70.0),
                        ),
                      ),
                    ),
          ),
          Padding(
            padding: const EdgeInsets.only(top :20),
            child: Text(
                      "Crafted by Minds, Fuelled by Passion",
                      style: TextStyle(
                        fontFamily: 'Behame',
                        shadows: [Shadow(color: Color.fromRGBO(121, 40, 253, 1),blurRadius: 15,offset: Offset(1, 1))],
                        fontSize: 15,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: <Color>[
                              Color(0xFF00C6FF), 
                              Color(0xFF0072FF), 
                              Color.fromARGB(255, 158, 97, 255), 
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 70.0)),
                      ),
                    ),
          ),
          Expanded(
            child: PageView.builder(
              physics : BouncingScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index){
                return Container(
                    child: Center(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => FullProfilePage(profile: details[index],profileID: index+1,),
                                  ),
                                );
                                },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Color.fromRGBO(195, 0, 255, 1), offset: Offset(5, 5),blurRadius: 15)]
                          ),
                          child: SizedBox(
                            height: 300,
                            width: 225,
                            child: Card(
                              child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors:[ 
                                            
                                            Color.fromRGBO(132, 0, 255, 1),
                                            Color.fromRGBO(0, 80, 254, 1),
                                            Color.fromRGBO(0, 132, 255, 1),
                                          
                                          ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top : 25),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(60),
                                                boxShadow: [BoxShadow(color: Color.fromRGBO(128, 0, 255, 1),blurRadius: 10,spreadRadius: 15)]
                                              ),
                                              child: ClipOval(
                                                child: Image(image: NetworkImage('https://raw.githubusercontent.com/Anudeep2005/Batman/refs/heads/main/${index+1}.jpg'), height: 98,),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          Padding(
                                            padding: const EdgeInsets.only(top :20, bottom: 5),
                                            child: Text("${details[index]["name"]}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          ),
                                          Text("Role : ${details[index]["role"]}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17
                                          ),
                                          ),
                                          Text("Company : ${details[index]["company"]}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17
                                          ),
                                          ),
                                          SizedBox(height: 8,),
                                          Chip(
                                            backgroundColor: Colors.black,
                                            shape: StadiumBorder(),
                                            label: Text("View More  👀",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10
                                            ),
                                            ),
                                          )
                                        ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 50,
            child: Text("👈 Swipe Left",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
          ) 
        
        ],
      ),
      backgroundColor: Color.fromRGBO(26, 27, 65, 1)
    );
  }
}