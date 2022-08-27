import 'package:flutter/material.dart';

class AirplaneScreen extends StatelessWidget {
  const AirplaneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      body: SafeArea(
      child: Container(decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(59, 148, 212, 1),
              Color.fromRGBO(93, 169, 224, 0.71),
            ],
          )),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(child: Image.asset("images/1.png"), radius: 40,),
                  Text("Hi Muskan!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  CircleAvatar(child: Icon(Icons.notifications, size: 55,color: Color.fromRGBO(175, 163, 163, 1),), radius: 40, backgroundColor: Colors.white70,)
                ],
              ),
            ),
            SizedBox(height: 40,),
            Text(
                "where you want to go?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search a flight")),
              ),
            ),


            ],
        ),
      ),
    ),);
  }
}
